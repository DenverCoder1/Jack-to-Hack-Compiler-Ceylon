import ceylon.file {
	File,
	Nil,
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