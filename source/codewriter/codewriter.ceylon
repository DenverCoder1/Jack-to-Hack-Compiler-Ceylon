import ceylon.collection {

	HashMap
}
// Comment a line of vm
shared String comment(String line) {
	return "// " + line + "\n";
}

// Translate VM command to ASM
shared String translateLine(String commandType, String arg1, String arg2) {
	if (commandType == "C_ARITHMETIC") {
		return translateArithmetic(arg1); 
	}
	else if (commandType == "C_PUSH") {
		return translatePushConstant(arg2);
	}
	return "";
}

// Translate Arithmetic command
String translateArithmetic(String arg1) {
	// map of operators
	value operators = HashMap<String, String> {
		"add" -> "+",
		"sub" -> "-",
		"and" -> "&",
		"or"  -> "|",
		"not" -> "!",
		"neg" -> "-",
		"eq"  -> "EQ",
		"lt"  -> "LT",
		"gt"  -> "GT"
	};
	// get operator
	String op = operators[arg1] else "";
	if (arg1 == "add" || arg1 == "sub" || arg1 == "and" || arg1 == "or") {
		return translateBinaryOperator(op);
	}
	else if (arg1 == "not" || arg1 == "neg") {
		return translateUnaryOperator(op);
	}
	else if (arg1 == "eq" || arg1 == "lt" || arg1 == "gt") {
		translateComparator(op);
	}
	return "";
}

// Translate Push Constant
String translatePushConstant(String x) {
	return  "@" + x + "\n" + 
			"""D=A
			   @SP
			   M=M+1
			   A=M-1
			   M=D
			    
			   """;
}

// Translate Add, Sub, And, Or
String translateBinaryOperator(String operator) {
	return """@SP
	          AM=M-1
	          D=M
	          M=0
	          @SP
	          A=M-1
	          """ + 
			"M=D" + operator + "M" + "\n\n";
}

// Translate Not and Neg
String translateUnaryOperator(String operator) {
	return """@SP
	          A=M-1
	          """ + 
			"M=" + operator + "M" + "\n\n";
}

// TODO: Translate Eq, Gt, Lt
String translateComparator(String operator) {
	return "// TODO -- " + operator;
}