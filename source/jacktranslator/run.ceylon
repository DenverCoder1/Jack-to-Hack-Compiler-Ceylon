// Jack Translator
// Jonah Lawrence
// Daniel Klein

import files {
	writeFile,
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

"Run the module `jacktranslator`."
shared void run() {
	// get vm files from command line arguments
	String[] paths = listFilesInDirectory(process.arguments[0] else "./", "jack");
	
	variable String tokenOutput = "";
	variable String compilationOutput = "";
	
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
		
		// create token parser
		Tokenizer tokenizer = Tokenizer(directory, filename);
		// build output
		tokenOutput += tokenizer.tokenize();
		// generate xml token output
		String tokenizerOutputFile = directory + filename + "T.xml";
		writeFile(tokenizerOutputFile, tokenOutput);
		// print contents of file for debugging
		print(tokenizerOutputFile);
		print(tokenOutput);
		
		// create compilation engine parser
		CompilationEngine compiler = CompilationEngine(directory, filename + "T");
		// build output
		compilationOutput += compiler.compile();
		// generate xml token output
		String compilationOutputFile = directory + filename + ".xml";
		writeFile(compilationOutputFile, compilationOutput);
		// print contents of file for debugging
		print(compilationOutputFile);
		print(compilationOutput);
	}
}