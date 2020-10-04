const scores = require("./scores");
const { writeFileSync } = require("fs");
const { join, relative } = require("path");
const { format } = require('date-fns');
const glob = require("glob")

const DIST_FOLDER = join(__dirname, "..", "dist");
const SRC_FOLDER = join(__dirname, "..", "src");
const INDEX_HTML = join(DIST_FOLDER, "index.html");
const PDF_EXT = ".pdf";
const MIDI_EXT = ".midi";
const MID_EXT = ".mid";

process.env.TZ = 'Europe/Paris';

console.log(`Generating ${INDEX_HTML}...`);

const files = [
    ...glob.sync(`${DIST_FOLDER}/**/*.pdf`),
    ...glob.sync(`${DIST_FOLDER}/**/*.mid*`),
].map(f => relative(DIST_FOLDER, f));

console.log(`Found ${files.length} score(s) !`);

function partitionArray(items, properties) {
    // Each properties + not matching
    const initial = new Array(properties.length + 1).fill([]);

    return items.reduce((acc, item) => {
        let index = properties.findIndex(prop => item[prop]);
        index = index === -1 ? properties.length : index;

        return [...acc.slice(0, index), [...acc[index], item], ...acc.slice(index + 1)];
    }, initial)
}

function removeExt(file) {
    return file.split('.').slice(0, -1).join('.');
}

function getMatchingFile(ext, score) {
    const sourceWithoutExt = removeExt(relative(SRC_FOLDER, score.file));
    const matchingFile = files.find(file => removeExt(file) === sourceWithoutExt && file.endsWith(ext));

    return matchingFile && matchingFile.replace(/\\/g, '/')
}

const [draftScores, archivedScores, percusScores, snareScores] = partitionArray(
    scores
    // Get matching scores
    .reduce((acc, score) => {
        const matchingFile = getMatchingFile(PDF_EXT, score);
        const midiFile = getMatchingFile(MIDI_EXT, score) || getMatchingFile(MID_EXT, score);
        return matchingFile ? [...acc, { ...score, matchingFile, midiFile }] : acc;
    }, []),
    ['draft', 'archived', 'percus']
);

const dateString = format(new Date(), 'DD/MM/YYYY à HH:mm:ss')

const renderScores = (scoresToRender) =>
  scoresToRender.length
    ? `
        <table>
            <tbody>
                ${scoresToRender
                  .map(
                    score =>
                      `<tr>
                            <td>${score.name}</td>
                            <td>
                                ${score.midiFile
                                    ? `<a href="./${score.midiFile}" target="_blank" title="Télécharger le fichier MIDI"><i class="fas fa-music"></i></a>`
                                    : ''}
                                <a href="./${score.matchingFile}" target="_blank" title="Visualiser le fichier PDF"><i class="fas fa-eye"></i></a>
                                <a href="./${score.matchingFile}" download title="Télécharger le fichier PDF"><i class="fas fa-download"></i></a>
                            </td>
                        </tr>`
                  )
                  .join("")}
            </tbody>
        </table>`
    : `<p><i>Aucune partition pour le moment.</i></p>`;

const renderAll = () => `
<html>
    <head>
        <title>Partitions</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.0-rc.4/dist/css/foundation.min.css" integrity="sha256-VEEaOnBKVRoYPn4AID/tY/XKVxKEqXstoo/xZ6nemak= sha384-D46t32f421/hB30qwnim2pIcisNN5GU9+6m2Mfnd3dKpTSFidZLa08/1StEiCFId sha512-WkgzH8VKemDfwrp18r+wgbx+oHXOkfd2kJs7ocAXdGDgonXDXh88E90IRtRZRXtO0IHprxYHYlY14h+wyTsUDA==" crossorigin="anonymous">
        <style>
            body {
                display: flex;
                flex-direction: column;
            }
            body > div {
                flex: 9;
            }
            body > footer {
                flex: 1;
                text-align: center;
                max-height: 2rem;
                font-size: .75rem;
            }
            tr > td:first-of-type {
                width: 80%;
            }
            tr > td:last-of-type {
                text-align: right;
                min-width: 95px;
            }
            td > a {
                padding-right: 1rem;
            }
            .grid-x > div {
                padding: 2rem;
            }
            .github-link-container {
                text-align: right;
                font-size: 1.5rem;
            }
        </style>
    </head>
    <body>
        <div class="grid-container">
            <div class="grid-x grid-margin-x">
                <div class="small-12 github-link-container">
                    <a href="https://github.com/GuillaumeNury/LilypondScores"><i class="fab fa-github"></i></a>
                </div>
                <div class="small-12">
                    <h1>Partitions</h1>
                    <p>Liste des partitions générées à l'aide de <a href="http://lilypond.org/index.fr.html" target="_blank">Lilypond</a>.</p>
                </div>
                <div class="small-12">
                    <h3>Partitions caisse claire</h3>
                    ${renderScores(snareScores)}
                </div>
                <div class="small-12">
                    <h3>Partitions percus</h3>
                    ${renderScores(percusScores)}
                </div>
                ${draftScores.length ?
                    `<div class="small-12">
                        <h3>Partitions en cours de rédaction</h3>
                        ${renderScores(draftScores)}
                    </div>` : ''
                }
                ${archivedScores.length ?
                    `<div class="small-12">
                        <h3>Partitions archivées</h3>
                        ${renderScores(archivedScores)}
                    </div>` : ''
                }
            </div>
        </div>
        <footer>
            <i>Dernière mise à jour le ${dateString}.</i>
        </footer>
    </body>
</html>
`;

writeFileSync(INDEX_HTML, renderAll());
