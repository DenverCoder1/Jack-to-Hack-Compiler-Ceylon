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
		// print output file path (debugging)
		//print(tokenizerOutputFile);
		// creake token parser
		Tokenizer tokenizer = Tokenizer(directory, filename);
		// build output
		tokenOutput += tokenizer.tokenize();
		// generate xml token output
		writeFile(tokenizerOutputFile, tokenOutput);
		// print contents of file for debugging
		//print(tokenOutput);
		
		// run compilation engine
		variable String compilationOutput = "";
		String compilationOutputFile = directory + filename + ".xml";
		// print output file path (debugging)
		print(compilationOutputFile);
		// create compilation engine parser
		CompilationEngine compiler = CompilationEngine(directory, filename + "T");
		// build output
		compilationOutput += compiler.compile();
		// generate xml token output
		writeFile(compilationOutputFile, compilationOutput);
		// print contents of file for debugging
		print(compilationOutput);
	}
}