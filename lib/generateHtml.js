const { readdirSync, writeFileSync } = require("fs");
const { join, extname } = require("path");
const { ghPageUrl } = require("../config");

const DIST_FOLDER = join(__dirname, "../dist");
const INDEX_HTML = join(DIST_FOLDER, "index.html");

console.log(`Generating ${INDEX_HTML}...`);

const files = readdirSync(DIST_FOLDER).filter(file => extname(file) === ".pdf");
console.log(`Found ${files.length} score(s) !`);

function getName(file) {
  return file
    .slice(0, -4)
    .split("-")
    .map(
      ([firstLetter, ...letters]) =>
        `${firstLetter.toUpperCase()}${letters.join("")}`
    )
    .join(" ");
}

const content = `
<html>
    <head>
        <title>Partitions</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.0-rc.4/dist/css/foundation.min.css" integrity="sha256-VEEaOnBKVRoYPn4AID/tY/XKVxKEqXstoo/xZ6nemak= sha384-D46t32f421/hB30qwnim2pIcisNN5GU9+6m2Mfnd3dKpTSFidZLa08/1StEiCFId sha512-WkgzH8VKemDfwrp18r+wgbx+oHXOkfd2kJs7ocAXdGDgonXDXh88E90IRtRZRXtO0IHprxYHYlY14h+wyTsUDA==" crossorigin="anonymous">
        <style>
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
                    <p>Liste des partitions générées à l'aide de <a href="http://lilypond.org/index.fr.html" target="_blank">Lilypond</a> :</p>
                    <table>
                        <tbody>
                            ${files
                              .map(
                                f =>
                                  `<tr>
                                       <td>${getName(f)}</td>
                                       <td>
                                           <a href="${ghPageUrl}/${f}" target="_blank"><i class="fas fa-eye"></i></a>
                                           <a href="${ghPageUrl}/${f}" download><i class="fas fa-download"></i></a>
                                       </td>
                                   </tr>`
                              )
                              .join("")}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
`;

writeFileSync(INDEX_HTML, content);
