// VM Translator
// Jonah Lawrence
// Daniel Klein

import files {
	writeFile,
	listFilesInDirectory
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

shared void translateVM(String vmDirectory, String asmOutputFile) {
	// get vm files from directory run function argument
	String[] paths = listFilesInDirectory(vmDirectory, "vm");
	
	variable String output = "";
	CodeWriter codewriter = CodeWriter();
	
	output += codewriter.initializeConstants();
	output += codewriter.sysInit();
	
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
		Parser parser = Parser(directory, filename);
		// build output
		output += "// Translation of ``filename``.vm" +
				"\n// ----------------------------------\n\n";
		output += parser.translateVM(codewriter);
	}
	
	// write output
	writeFile(asmOutputFile, output);
	// print contents of file for debugging
	//print(output);
	//print(asmOutputFile);
}

"Run the module `vmtranslator`."
shared void run() {
	// get the vm files from the directory
	String vmDirectory = process.arguments[0] else "./";
	String asmOutputFile = process.arguments.last else "./resource/output.asm";
	// run vm translator
	translateVM(vmDirectory, asmOutputFile);
}