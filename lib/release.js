const { compileFile } = require("./compileFile");
const scores = require("./scores");

async function compileScores() {
  await Promise.all(scores.map(score => compileFile(score, "pdf", false)))
}

compileScores();
