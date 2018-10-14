const glob = require("glob");
const { normalize, join } = require("path");
const { readFileSync } = require("fs");

const SRC = normalize(join(__dirname, "..", "src"));
const COMPIL_REGEX = /^\% ?LilypondScores:?/;
const TITLE_REGEX = /title = ['"](.*)['"]/;

//#region Utils
function parseTitle(file, lines) {
	const titleLine = lines.find(l => l.match(TITLE_REGEX));

	if (!titleLine) {
		throw new Error(`Cannot find a title in ${file}.`);
	}

	return titleLine.match(TITLE_REGEX)[1];
}

function parseArguments(line) {
	const sanitizedLine = line
		.replace(COMPIL_REGEX, "")
		.replace(/\r/g, "")
		.trim();

	if (!sanitizedLine) {
		return {};
	}
	
	const args = sanitizedLine.split(":");

	return args.reduce((acc, arg) => {
		const [key, value] = arg.split("=");

		return { ...acc, [key]: parseArgValue(value) };
	}, {});
}

function parseArgValue(value) {
	if (value === undefined) {
		return true;
	}

	const map = { true: true, false: false };

	return map[value] === undefined ? value : map[value];
}
//#endregion

/**
 * Find scores
 */
const files = glob.sync(`${SRC}/**/*.ily`);

const scores = files.reduce((acc, file) => {
	const lines = readFileSync(file)
	.toString()
	.split("\n");

	const firstLine = lines[0];
	const isScoreToCompile = firstLine && firstLine.match(COMPIL_REGEX);

	if (!isScoreToCompile) {
		return acc;
	}

	const parsedArgs = parseArguments(firstLine);
	const title = parseTitle(file, lines);
	const score = { name: title, ...parsedArgs, file };

	return [...acc, score];
}, []);

module.exports = scores;