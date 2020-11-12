// Lab 1 - VM Translator
// Jonah Lawrence
// Daniel Klein

import ceylon.regex {
	regex
}
import ceylon.collection {
	HashMap
}
import codewriter {
	CodeWriter
}
import files {
	readLines
}

shared class Parser {
	variable String[] allLines;
	variable String filename;
	
	shared new (String dir, String file) {
		allLines = readLines(dir + file + ".vm");
		filename = file;
	}
	
	// translate all lines of a vm program to asm
	shared String translateVM(CodeWriter codewriter) {
		variable String output = "";
		for (rawLine in allLines) {
			// strip comments and whitespace
			String line = stripCommentsAndWhitespace(rawLine);
			// skip empty lines
			if (line == "") {
				continue;
			}
			// split into tokens by space delimiter
			variable String[] splitLine = [];
			for (token in line.split(' '.equals)) {
				splitLine = splitLine.append([token]);
			}
			// get command type
			String commandType = getCommandType(splitLine) else "";
			String arg1 = getFirstArg(splitLine, commandType) else "";
			String arg2 = getSecondArg(splitLine, commandType) else "";
			// add original line as comment to output
			output += codewriter.comment(rawLine);
			// add translation of command to output 
			output += codewriter.translateLine(commandType, arg1, arg2, filename);
		}
		return output;
	}
	
	// get command type
	String? getCommandType(String[] splitLine) {
		// map of commands
		value commands = HashMap<String,String> {
			"add"      -> "C_ARITHMETIC",
			"sub"      -> "C_ARITHMETIC",
			"neg"      -> "C_ARITHMETIC",
			"eq"       -> "C_ARITHMETIC",
			"gt"       -> "C_ARITHMETIC",
			"lt"       -> "C_ARITHMETIC",
			"and"      -> "C_ARITHMETIC",
			"or"       -> "C_ARITHMETIC",
			"not"      -> "C_ARITHMETIC",
			"push"     -> "C_PUSH",
			"pop"      -> "C_POP",
			"goto"     -> "C_GOTO",
			"label"    -> "C_LABEL",
			"if-goto"  -> "C_IF",
			"function" -> "C_FUNCTION",
			"call"     -> "C_CALL",
			"return"   -> "C_RETURN"
		};
		// get command
		if (splitLine.size > 0) {
			String token = splitLine[0] else "";
			return commands[token];
		}
		// no command
		return null;
	}
	
	// get first argument
	String? getFirstArg(String[] splitLine, String commandType) {
		if (commandType == "C_RETURN") {
			return null;
		}
		if (commandType == "C_ARITHMETIC") {
			return splitLine[0];
		}
		try {
			return splitLine[1];
		} catch (Exception e) {
			throw Exception("Invalid VM Command");
		}
	}
	
	// get second argument
	String? getSecondArg(String[] splitLine, String commandType) {
		if (commandType in ["C_PUSH", "C_POP", "C_FUNCTION", "C_CALL"]) {
			String arg2 = splitLine[2] else "0";
			return regex("[^0-9\\-]").replace(arg2, "");
		} else {
			return null;
		}
	}
	
	// remove single line comments
	String stripCommentsAndWhitespace(variable String line) {
		// remove comments
		line = regex("//.*").replace(line, "");
		// trim left whitespace
		line = regex("^\\s*").replace(line, "");
		// trim right whitespace
		line = regex("\\s*$").replace(line, "");
		return line;
	}
}