const { spawn } = require("child_process");
const { join, normalize } = require("path");
const { binPath } = require("../config");
const { existsSync, mkdirSync } = require("fs");

const DIST_PATH = "./dist";

function normalizeScoreFile(scoreFile) {
  return normalize(join(__dirname, "..", "src", scoreFile));
}

function compileFile(file, format, verbose) {
  return new Promise(resolve => {
    // ensure dist folder exists
    if (!existsSync(DIST_PATH)) {
      mkdirSync(DIST_PATH);
    }

    const compile = spawn(
      `${binPath}`,
      [`--output=${DIST_PATH}`, `--${format}`, file],
      { cwd: normalize(join(__dirname, "..")) }
    );

    compile.stdout.on("data", function(data) {
      if (verbose) {
        console.log(data.toString());
      }
    });

    compile.stderr.on("data", function(data) {
      if (verbose) {
        console.log("err: " + data.toString());
      }
    });

    compile.on("exit", function(code) {
      console.log("Lilypond compilation ended with code " + code.toString());
      resolve();
    });
  });
}

module.exports = { compileFile, normalizeScoreFile };
