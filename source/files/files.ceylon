// VM Translator
// Jonah Lawrence
// Daniel Klein

import ceylon.file {
	File,
	Nil,
	Directory,
	Resource,
	parsePath,
	createFileIfNil,
	lines
}

// write text to a file
shared void writeFile(String filePath, String text) {
	Resource resource = parsePath(filePath).resource;
	// check the type of the resource
	if (is File|Nil resource) {
		// create file if it doesn't exist
		// otherwise get the resource
		File file = createFileIfNil(resource);
		// overwrite contents
		try (overwriter = file.Overwriter()) {
			overwriter.writeLine(text);
		}
	}
}

// read a file and return a list of all lines
shared String[] readLines(String filePath) {
	Resource resource = parsePath(filePath).resource;
	// check the type of the resource
	if (is File resource) {
		return lines(resource);
	}
	else {
		throw Exception("Resource is not a file.");
	}
}

// parsePath
shared String[] listVMFilesInDirectory(String path) {
	Resource resource = parsePath(path).resource;
	// list all vm files in directory
	if (is Directory resource) {
		variable String[] vmFiles = [];
		for (file in resource.childPaths("*.vm")) {
			vmFiles = vmFiles.append([file.string]);
		}
		return vmFiles;
	}
	// return single file
	else if (is File resource) {
		return [path];
	}
	// file/directory doesn't exist
	else {
		throw Exception("Argument is not a directory or file.");
	}
}