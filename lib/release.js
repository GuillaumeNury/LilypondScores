const { compileFile, normalizeScoreFile } = require("./compileFile");
const scores = require("../src/scores");

async function compileScores() {
  for (const score of scores) {
    console.log(`Compiling ${score.name}...`);
    await compileFile(normalizeScoreFile(score.file), "pdf", false);
  }
}

compileScores();
