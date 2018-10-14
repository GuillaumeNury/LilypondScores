const { readdirSync, writeFileSync } = require("fs");
const { join, extname } = require("path");
const { ghPageUrl } = require("../config");

const DIST_FOLDER = join(__dirname, "../dist");
const INDEX_HTML = join(DIST_FOLDER, "index.html");

console.log(`Generating ${INDEX_HTML}...`);

const files = readdirSync(DIST_FOLDER).filter(file => extname(file) === ".pdf");

const content = `
<html>
    <head>
        <title>Partitions</title>
    </head>
    <body>
        <h1>Partitions</h1>
        <p>Liste des partitions générées à l'aide de <a href="http://lilypond.org/index.fr.html">Lilypond</a></p>
        <ul>
            ${files
              .map(f => `<li><a href="${ghPageUrl}/${f}">${f}</a></li>`)
              .join("")}
        </ul>
    </body>
</html>
`;

writeFileSync(INDEX_HTML, content);
