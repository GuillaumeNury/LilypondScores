const { spawn } = require("child_process");
const { join, normalize, relative, dirname } = require("path");
const { binPath } = require("../config");
const { existsSync, mkdirSync } = require("fs");

const DIST_PATH = "./dist";
const baseSourceFilePath = join(__dirname, '..', 'src');

async function compileFile(score, format, verbose) {
  let dist = join(DIST_PATH, dirname(relative(baseSourceFilePath, score.file))).replace(/\\/g, '/');
  const logPrefix = `[${format}][${score.name.slice(0, 35).padEnd(35)}]`;

  return new Promise(resolve => {
    // ensure dist folder exists
    const parts = dist.split('/');
    for (let index = 0; index < parts.length; index++) {
      const part = parts.slice(0, index + 1).join('/');
      if (!existsSync(part)) {
        mkdirSync(part);
      }
    }

    const compile = spawn(
      `${binPath}`,
      [
        `--output=${dist}`,
        `--loglevel=ERROR`,
        `-dinclude-settings=theme/core.ily`,
        `--${format}`,
        score.file,
      ],
      { cwd: normalize(join(__dirname, "..")) }
    );

    compile.stdout.on("data", function(data) {
      if (verbose) {
        console.log(`${logPrefix} `+ data.toString());
      }
    });

    compile.stderr.on("data", function(data) {
      if (verbose) {
        console.log(`${logPrefix} err: ` + data.toString());
      }
    });

    compile.on("exit", function(code) {
      const codeText =
        code === 0 ? `with success` : `with error (code ${code})`;
      console.log(`${logPrefix} Lilypond compilation ended ${codeText}.`);
      resolve();
    });
  });
}

module.exports = { compileFile };
