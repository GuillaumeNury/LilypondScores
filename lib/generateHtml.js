const scores = require("./scores");
const { readdirSync, writeFileSync } = require("fs");
const { join, extname, basename } = require("path");
const { ghPageUrl } = require("../config");
const { getThemes } = require('./compileFile');
const { format } = require('date-fns');

const DIST_FOLDER = join(__dirname, "../dist");
const INDEX_HTML = join(DIST_FOLDER, "index.html");
const PDF_EXT = ".pdf";
const ILY_EXT = ".ily";

process.env.TZ = 'Europe/Paris';

console.log(`Generating ${INDEX_HTML}...`);

const files = readdirSync(DIST_FOLDER).filter(
  file => extname(file) === PDF_EXT
);
console.log(`Found ${files.length} score(s) !`);

const themes = getThemes();

const [draftScores, finalScores] = scores
  // Get matching scores
  .reduce((acc, score) => {
    const matchingFile = files.find(
      f =>
        f.slice(0, -PDF_EXT.length) ===
        basename(score.file).slice(0, -ILY_EXT.length)
    );
    return matchingFile ? [...acc, { ...score, matchingFile }] : acc;
  }, [])
  // Partition in draft and final scores
  .reduce(
    ([drafts, finals], score) =>
      score.draft ? [[...drafts, score], finals] : [drafts, [...finals, score]],
    [[], []]
  );

const dateString = format(new Date(), 'DD/MM/YYYY à HH:mm:ss')

const renderScores = (scoresToRender, theme) =>
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
                                <a href="./${theme.folder}/${
                        score.matchingFile
                      }" target="_blank"><i class="fas fa-eye"></i></a>
                                <a href="./${theme.folder}/${
                        score.matchingFile
                      }" download><i class="fas fa-download"></i></a>
                            </td>
                        </tr>`
                  )
                  .join("")}
            </tbody>
        </table>`
    : `<p><i>Aucune partition pour le moment.</i></p>`;

const renderThemes = selected => `
<ul>
    ${themes.filter(t => t!== selected).map(t => `<li><a href="./${t.folder}.html">${t.name}</a></li>`)}
</ul>
`

const renderContent = theme => `
<html>
    <head>
        <title>Partitions (Thème ${theme.name})</title>
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
                    <h1>Partitions (Thème ${theme.name})</h1>
                    <p>Liste des partitions générées à l'aide de <a href="http://lilypond.org/index.fr.html" target="_blank">Lilypond</a>.</p>
                </div>
                <div class="small-12">
                    <h3>Partitions validées</h3>
                    ${renderScores(finalScores, theme)}
                </div>
                ${draftScores.length ?
                    `<div class="small-12">
                        <h3>Partitions en cours de rédaction</h3>
                        ${renderScores(draftScores, theme)}
                    </div>` : ''
                }
                <div class="small-12">
                    <h3>Themes</h3>
                    ${renderThemes(theme)}
                </div>
            </div>
        </div>
        <footer>
            <i>Dernière mise à jour le ${dateString}.</i>
        </footer>
    </body>
</html>
`;

for (const theme of themes) {
    writeFileSync(join(DIST_FOLDER, `${theme.folder}.html`), renderContent(theme));
}
writeFileSync(INDEX_HTML, renderContent(themes.find(t => t.name === 'Normal')));
