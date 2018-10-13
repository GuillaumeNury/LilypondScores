const { spawn } = require("child_process");
const { join, normalize } = require("path");
const { binPath } = require("../config");
const { existsSync, mkdirSync } = require("fs");

const DIST_PATH = "./dist";

function compileFile(file, format) {
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
    console.log(data.toString());
  });

  compile.stderr.on("data", function(data) {
    console.log("err: " + data.toString());
  });

  compile.on("exit", function(code) {
    console.log("child process exited with code " + code.toString());
  });
}

module.exports = { compileFile };
