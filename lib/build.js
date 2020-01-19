const { compileFile } = require("./compileFile");
const scores = require("./scores");
const process = require("process");
const { normalize, join } = require("path");
const [file] = process.argv.slice(2);

const fileToBuild = file
  ? normalize(join(__dirname, "..", file))
  : scores[0].file;

const matchingScore = scores.find(s => normalize(s.file) === fileToBuild);

if (!matchingScore) {
  throw new Error(
    `Le fichier ${fileToBuild} n'est pas enregistré dans ./src/scores, il ne peut être compilé.`
  );
}

compileFile(matchingScore, "png", true, false);
