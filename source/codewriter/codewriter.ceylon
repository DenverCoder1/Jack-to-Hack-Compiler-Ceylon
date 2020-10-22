// Comment a line of vm
String comment(String line) {
	return "// " + line + "\n";
}

// Translate Push Constant
shared String translatePushConstant(String line, String x) {
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
shared String translateBinaryOperator(String line, String operator) {
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
shared String translateUnaryOperator(String line, String operator) {
	return comment(line) +
			"""@SP
			   A=M-1
			   """ + 
			"M=" + operator + "M" + "\n\n";
}

// TODO: Translate Eq, Gt, Lt
shared String translateComparator(String line, String operator) {
	return comment(line) + "--\n\n";
}