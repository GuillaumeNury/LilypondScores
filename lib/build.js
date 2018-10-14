const { compileFile, normalizeScoreFile } = require("./compileFile");
const scores = require("../src/scores");
const process = require("process");
const { normalize, join } = require("path");
const [file] = process.argv.slice(2);

const scoreFiles = scores.map(s => normalizeScoreFile(s.file));

const fileToBuild = file
  ? normalize(join(__dirname, "..", file))
  : scoreFiles[0];

const isValidFile = scoreFiles.find(sf => sf === fileToBuild);

if (!isValidFile) {
  throw new Error(
    `Le fichier ${fileToBuild} n'est pas enregistré dans ./src/scores, il ne peut être compilé.`
  );
}

compileFile(fileToBuild, "png", true);
