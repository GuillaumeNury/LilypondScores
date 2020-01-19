const { compileFile, normalizeScoreFile } = require("./compileFile");
const scores = require("./scores");

async function compileScores() {
  for (const score of scores) {
    console.log(`Compiling "${score.name}"...`);
    await compileFile(score, "pdf", false, true);
  }
}

compileScores();
