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
	String filename = "StaticTest";
	// locate input and output files
	String path = "./resource/MemoryAccess/"+filename+"/";
	// build output
	String output = translateVM(path, filename);
	// write output
	String outputFile = path+filename+".asm";
	writeFile(outputFile, output);
	// print contents of file
	print(output);
}