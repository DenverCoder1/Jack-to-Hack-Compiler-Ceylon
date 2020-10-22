import ceylon.regex {
	regex
}

// translate all lines of a vm program to asm
String translate(String[] allLines) {
	variable String output = "";
	for (line in allLines) { 
		output += translateLine(line);
	}
	return output;
}

// translate a line of vm to asm
String translateLine(String line) {
	if (regex("^push constant -?[0-9]+$").test(line)) {
		// remove the push constant text and leave the number
		String x = regex("[^0-9\\-]*").replace(line, "");
		// translate push constant to asm
		return translatePushConstant(line, x);
	}
	else if (regex("^add$").test(line)) {
		// translate add to asm
		return translateBinaryOperator(line, "+");
	}
	else if (regex("^sub$").test(line)) {
		// translate sub to asm
		return translateBinaryOperator(line, "-");
	}
	else if (regex("^neg$").test(line)) {
		// translate neg to asm
		return translateUnaryOperator(line, "-");
	}
	else if (regex("^and$").test(line)) {
		// translate and to asm
		return translateBinaryOperator(line, "&");
	}
	else if (regex("^or$").test(line)) {
		// translate or to asm
		return translateBinaryOperator(line, "|");
	}
	else if (regex("^not$").test(line)) {
		// translate not to asm
		return translateUnaryOperator(line, "!");
	}
	else if (regex("^eq$").test(line)) {
		// translate eq to asm
		return translateComparator(line, "EQ");
	}
	else if (regex("^gt$").test(line)) {
		// translate gt to asm
		return translateComparator(line, "GT");
	}
	else if (regex("^lt$").test(line)) {
		// translate lt to asm
		return translateComparator(line, "LT");
	}
	// fallthrough
	return "";
}

// Comment a line of vm
String comment(String line) {
	return "// " + line + "\n";
}

// Translate Push Constant
String translatePushConstant(String line, String x) {
	return comment(line) +
			"@" + x + "\n" + 
			"""D=A
			   @SP
			   M=M+1
			   A=M-1
			   M=D
			    
			   """;
}

// Translate Add, Sub, And, Or
String translateBinaryOperator(String line, String operator) {
	return comment(line) +
			"""@SP
			   AM=M-1
			   D=M
			   M=0
			   @SP
			   A=M-1
			   """ + 
			"M=D" + operator + "M" + "\n\n";
}

// Translate Not and Neg
String translateUnaryOperator(String line, String operator) {
	return comment(line) +
			"""@SP
			   A=M-1
			   """ + 
			"M=" + operator + "M" + "\n\n";
}

// TODO: Translate Eq, Gt, Lt
String translateComparator(String line, String operator) {
	return comment(line) + "--\n\n";
}