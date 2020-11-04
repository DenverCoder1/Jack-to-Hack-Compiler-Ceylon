// Lab 1 - VM Translator
// Jonah Lawrence
// Daniel Klein

// import from local modules
import files {
	writeFile
}
import parser {
	translateVM
}
import ceylon.regex {
	Regex,
	regex,
	MatchResult
}

"Run the module `main`."
shared void run() {
	// locate input and output files
	String defaultPath = "./resource/MemoryAccess/StaticTest/StaticTest.vm";
	String path = process.arguments[0] else defaultPath;
	// parse path
	Regex re = regex("(.*/)");
	variable String directory = "";
	MatchResult? directoryMatch = re.find(path);
	if (exists directoryMatch) {
		directory = directoryMatch.matched;
	}
	String filename = re.replace(path, "");
	// build output
	String output = translateVM(directory, filename);
	// write output
	String outputFile = directory+filename.replace(".vm", ".asm");
	writeFile(outputFile, output);
	// print contents of file for debugging
	print(output);
}