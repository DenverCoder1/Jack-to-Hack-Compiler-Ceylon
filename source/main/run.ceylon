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

"Run the module `main`."
shared void run() {
	String stage = "MemoryAccess";
	String test = "BasicTest";
	// locate input and output files
	String dir = "./resource/"+stage+"/"+test+"/";
	String inputFile = dir+test+".vm";
	String outputFile = dir+test+".asm";
	// build output
	String output = translateVM(inputFile);
	// write output
	writeFile(outputFile, output);
	// print contents of file
	print(output);
}