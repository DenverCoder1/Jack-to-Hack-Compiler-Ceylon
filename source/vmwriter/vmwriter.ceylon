// Symbol Table
// Jonah Lawrence
// Daniel Klein

import files {
	appendToFile
}

shared class VMWriter {
	
	variable String outputFile;
	
	shared new(String dir, String file) {
		outputFile = dir + file + ".vm";
	}
	
	// write a VM push command
	shared void writePush(String segment, Integer index) {
		appendToFile(outputFile, "push ``segment`` ``index``\n");
	}
	
	// write a VM pop command
	shared void writePop(String segment, Integer index) {
		appendToFile(outputFile, "pop ``segment`` ``index``\n");
	}
	
	// write a VM arithmetic-logical command
	shared void writeArithmetic(String command) {
		appendToFile(outputFile, "``command``\n");
	}
	
	// write a VM label command
	shared void writeLabel(String label) {
		appendToFile(outputFile, "label ``label``\n");
	}
	
	// write a VM goto command
	shared void writeGoto(String label) {
		appendToFile(outputFile, "goto ``label``\n");
	}
	
	// write a VM if-goto command
	shared void writeIf(String label) {
		appendToFile(outputFile, "if-goto ``label``\n");
	}
	
	// write a VM call command
	shared void writeCall(String name, Integer numArgs) {
		appendToFile(outputFile, "call ``name`` ``numArgs``\n");
	}
	
	// write a VM function command
	shared void writeFunction(String name, Integer numLocals) {
		appendToFile(outputFile, "function ``name`` ``numLocals``\n");
	}
	
	// write a VM function command
	shared void writeReturn() {
		appendToFile(outputFile, "return\n");
	}
	
}