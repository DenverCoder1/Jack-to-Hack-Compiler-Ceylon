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
import ceylon.regex {
	Regex,
	MatchResult,
	regex
}

"Run the module `jacktranslator`."
shared void run() {
	// get vm files from command line arguments
	String[] paths = listFilesInDirectory(process.arguments[0] else "./", "jack");
	
	variable String output = "";
	
	// translate each vm file
	for (path in paths) {
		// parse path
		Regex re = regex("(.*[/\\\\])");
		variable String directory = "";
		MatchResult? directoryMatch = re.find(path);
		if (exists directoryMatch) {
			directory = directoryMatch.matched;
		}
		String filename = re.replace(path, "").replace(".vm", "");
		// create parser
		Tokenizer tokenizer = Tokenizer(directory, filename);
		// build output
		output += tokenizer.tokenize();
	}
	
	// write output
	String outputFile = process.arguments.last else "./resource/output-tokens.xml";
	writeFile(outputFile, output);
	// print contents of file for debugging
	print(output);
	print(outputFile);
}