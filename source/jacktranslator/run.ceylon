// Jack Translator
// Jonah Lawrence
// Daniel Klein

import files {
	writeFile,
	readFile,
	listFilesInDirectory
}
import tokenizer {
	Tokenizer
}
import compilationengine {
	CompilationEngine
}
import ceylon.regex {
	Regex,
	MatchResult,
	regex
}
import vmtranslator {
	translateVM
}

"Run the module `jacktranslator`."
shared void run() {
	// get vm files from command line arguments
	String dir = process.arguments[0] else "./";
	String[] paths = listFilesInDirectory(dir, "jack");
	
	print("Compiling Jack \"``dir``\"");

	// translate each jack file
	for (path in paths) {
		// parse path
		Regex re = regex("(.*[/\\\\])");
		variable String directory = "";
		MatchResult? directoryMatch = re.find(path);
		if (exists directoryMatch) {
			directory = directoryMatch.matched;
		}
		String filename = re.replace(path, "").replace(".jack", "");
		
		// run tokenizer
		variable String tokenOutput = "";
		String tokenizerOutputFile = directory + filename + "T.xml";
		// creake token parser
		Tokenizer tokenizer = Tokenizer(directory, filename);
		// build output
		tokenOutput += tokenizer.tokenize();
		// generate xml token output
		writeFile(tokenizerOutputFile, tokenOutput);
		
		// run compilation engine
		variable String compilationOutput = "";
		String compilationOutputFile = directory + filename + ".xml";
		// create compilation engine parser
		CompilationEngine compiler = CompilationEngine(directory, filename, "T");
		// build output
		compilationOutput += compiler.compile();
		// generate xml token output
		writeFile(compilationOutputFile, compilationOutput);
		// print output file path (debugging)
		//print(directory + filename + ".vm");
		// print contents of file for debugging
		//print(readFile(directory + filename + ".vm"));
	}
	
	// translate VM to HACK
	String asmFilename = "output";
	translateVM(dir, dir + asmFilename + ".asm");
}