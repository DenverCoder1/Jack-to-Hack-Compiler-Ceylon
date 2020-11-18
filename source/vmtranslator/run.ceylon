// VM Translator
// Jonah Lawrence
// Daniel Klein

import files {
	writeFile
}
import parser {
	Parser
}
import codewriter {
	CodeWriter
}
import ceylon.regex {
	Regex,
	MatchResult,
	regex
}

"Run the module `vmtranslator`."
shared void run() {
	// get vm files from command line arguments
	String[] paths = process.arguments.exceptLast;
	
	variable String output = "";
	CodeWriter codewriter = CodeWriter();
	
	output += codewriter.initializeConstants();
	output += codewriter.sysInit();
	
	// translate each vm file
	for (path in paths) {
		// parse path
		Regex re = regex("(.*/)");
		variable String directory = "";
		MatchResult? directoryMatch = re.find(path);
		if (exists directoryMatch) {
			directory = directoryMatch.matched;
		}
		String filename = re.replace(path, "").replace(".vm", "");
		// create parser
		Parser parser = Parser(directory, filename);
		// build output
		output += "// Translation of ``filename``.vm" +
				  "\n// ----------------------------------\n\n";
		output += parser.translateVM(codewriter);
	}
	
	// write output
	String outputFile = process.arguments.last else "./resource/output.asm";
	writeFile(outputFile, output);
	// print contents of file for debugging
	print(output);
	print(outputFile);
}