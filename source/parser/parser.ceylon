import codewriter {
	translateComparator,
	translatePushConstant,
	translateUnaryOperator,
	translateBinaryOperator
}
import ceylon.regex {
	regex
}
import ceylon.collection {
	HashMap
}

// translate all lines of a vm program to asm
shared String translateVM(String[] allLines) {
	variable String output = "";
	for (rawLine in allLines) { 
		String line = stripCommentsAndWhitespace(rawLine);
		variable String[] splitLine = [];
		for (token in line.split(' '.equals)) {
			splitLine = splitLine.append([token]);
		}
		String? commandType = getCommandType(splitLine);
		// output += translateLine(commandType, arg1, arg2);
	}
	return output;
}

// translate a line of vm to asm
String? getCommandType(String[] splitLine) {
	// map of commands
	value commands = HashMap<String,String> {
		"push"->"C_PUSH",
		"add"->"C_ARITHMETIC"
	};
	// get command
	if (splitLine.size > 0) {
		String token = splitLine[0] else  "";
		return commands[token];
	}
	
	return null;
}

// remove single line comments
String stripCommentsAndWhitespace(variable String line) {
	// remove comments
	line = regex("//.*").replace(line, "");
	// trim left spacing
	line = regex("^\\s*").replace(line, "");
	// trim right spacing
	line = regex("\\s*$").replace(line, "");
	return line;
}