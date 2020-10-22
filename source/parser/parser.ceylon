import codewriter {
	translateComparator,
	translatePushConstant,
	translateUnaryOperator,
	translateBinaryOperator
}
import ceylon.regex {
	regex
}

// translate all lines of a vm program to asm
shared String translateVM(String[] allLines) {
	variable String output = "";
	for (line in allLines) { 
		output += getCommandType(line);
	}
	return output;
}

// translate a line of vm to asm
String getCommandType(variable String line) {
	line = stripCommentsAndWhitespace(line);
	variable String[] splitLine = [];
	for (token in line.split(' '.equals)) {
		
	}
	try {
		print(splitLine[0]);
	}
	catch (Exception e) {
		
	}
	if (regex("^push constant -?[0-9]+\\W*$").test(line)) {
		return "C_PUSH";
	}
	else if (regex("^\\W*add\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*sub\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*neg\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*and\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*or\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*not\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*eq\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*gt\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	else if (regex("^\\W*lt\\W*$").test(line)) {
		return "C_ARITHMETIC";
	}
	// fallthrough
	return "";
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