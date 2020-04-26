const { spawn } = require("child_process");
const { join, normalize } = require("path");
const { binPath } = require("../config");
const { existsSync, mkdirSync, readdirSync, readFileSync } = require("fs");

const DIST_PATH = "./dist";

async function compileFile(score, format, verbose, compileThemes) {
  
  const allThemes = getThemes();
  const themesToCompile = compileThemes ? allThemes : [allThemes[0]];

  for (const theme of themesToCompile) {
    await compileSingleFile(score, format, verbose, theme);
  }
}

function compileSingleFile(score, format, verbose, theme) {
  let dist = DIST_PATH + '/' + theme.folder;

  if (score.percus) {
    dist += '/percus';
  }

  return new Promise(resolve => {
    // ensure dist folder exists
    if (!existsSync(DIST_PATH)) {
      mkdirSync(DIST_PATH);
    }
    if (!existsSync(dist)) {
      mkdirSync(dist, { recursive: true });
    }

    const compile = spawn(
      `${binPath}`,
      [
        `--output=${dist}`,
        `--loglevel=ERROR`,
        `-dinclude-settings=${theme.include}`,
        `--${format}`,
        score.file,
      ],
      { cwd: normalize(join(__dirname, "..")) }
    );

    compile.stdout.on("data", function(data) {
      if (verbose) {
        console.log(`[${format}][${theme.name}] `+ data.toString());
      }
    });

    compile.stderr.on("data", function(data) {
      if (verbose) {
        console.log(`[${format}][${theme.name}] err: ` + data.toString());
      }
    });

    compile.on("exit", function(code) {
      const codeText =
        code === 0 ? `with success` : `with error (code ${code})`;
      console.log(`[${format}][${theme.name}] Lilypond compilation ended ${codeText}.`);
      resolve();
    });
  });
}

function getThemes() {
  const folder = join(__dirname, '..', 'theme');

  return readdirSync(folder).map(file => {
    const content = readFileSync(join(folder, file)).toString();

    return {
      name: content.split(/\r\n|\n/)[0].replace(/% /, ''),
      include: `theme/${file}`,
      folder: file.replace(/\.ily$/, '')
    };
  });
}

module.exports = { compileFile, getThemes };
