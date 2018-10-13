const { spawn } = require("child_process");
const { join, normalize } = require("path");
const { binPath } = require("../config");

const compile = spawn(
  `${binPath}`,
  [`--output=./dist`, `--png`, `./src/suite-gille-servat.ily`],
  { cwd: normalize(join(__dirname, "..")) }
);

compile.stdout.on("data", function(data) {
  console.log("stdout: " + data.toString());
});

compile.stderr.on("data", function(data) {
  console.log("stderr: " + data.toString());
});

compile.on("exit", function(code) {
  console.log("child process exited with code " + code.toString());
});
