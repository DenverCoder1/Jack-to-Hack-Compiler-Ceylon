// Lab 1 - VM Translator
// Jonah Lawrence
// Daniel Klein

// import from local modules
import files {
	writeFile,
	readLines
}
import vmtranslator {
	translateVM
}

"Run the module `main`."
shared void run() {
	String stage = "StackArithmetic";
	String test = "SimpleAdd";
	// locate input and output files
	String dir = "./resource/"+stage+"/"+test+"/";
	String inputFile = dir+test+".vm";
	String outputFile = dir+test+".asm";
	// read from file
	String[] allLines = readLines(inputFile);
	// build output
	String output = translateVM(allLines);
	// write output
	writeFile(outputFile, output);
	// print contents of file
	print(output);
}