// Lab 1 - VM Translator
// Jonah Lawrence
// Daniel Klein

import files {
	writeFile
}
import parser {
	translateVM
}
import ceylon.regex {
	Regex,
	MatchResult,
	regex
}

"Run the module `vmtranslator`."
shared void run() {
	// get input file from command line argument
	String defaultPath = "./resource/MemoryAccess/StaticTest/StaticTest.vm";
	String path = process.arguments[0] else defaultPath;
	// parse path
	Regex re = regex("(.*/)");
	variable String directory = "";
	MatchResult? directoryMatch = re.find(path);
	if (exists directoryMatch) {
		directory = directoryMatch.matched;
	}
	String filename = re.replace(path, "").replace(".vm", "");
	// build output
	String output = translateVM(directory, filename);
	// write output
	String outputFile = directory + filename + ".asm";
	writeFile(outputFile, output);
	// print contents of file for debugging
	print(output);
	print(outputFile);
}