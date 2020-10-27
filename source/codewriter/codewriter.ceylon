import ceylon.collection {

	HashMap
}
// Comment a line of vm
shared String comment(String line) {
	return "// " + line + "\n";
}

// Translate VM command to ASM
shared String translateLine(String commandType, String arg1, String arg2, String inputFile) {
	if (commandType == "C_ARITHMETIC") {
		return translateArithmetic(arg1); 
	}
	else if (commandType == "C_PUSH") {
		return translatePush(arg1, arg2, inputFile);
	}
	else if (commandType == "C_POP") {
		return translatePop(arg1, arg2, inputFile);
	}	
	else if (commandType == "C_GOTO") {
		return translateGoto(arg1);
	}
	else if (commandType == "C_LABEL") {
		return translateLabel(arg1);
	}
	else if (commandType == "C_IF") {
		return translateIf(arg1);
	}
	else if (commandType == "C_FUNCTION") {
		return translateFunction(arg1, arg2);
	}
	else if (commandType == "C_CALL") {
		return translateCall(arg1, arg2);
	}
	else if (commandType == "C_RETURN") {
		return translateReturn();
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

// Translate Eq, Gt, Lt
String translateComparator(String operator) {
	//looking for more consice version
	
	return """@SP
	          AM=M-1
	          D=M
	          M=0
	          @SP
	          A=M-1
	          D=M-D
	          @true_label
	          D;J""" +
			operator + "\n" +
			"""@false_label
			   0;JMP
			   @SP
			   A=M-1
			   M=-1
			   @continue_label
			   0;JMP
			   false_label
			   @SP
			   A=M-1
			   M=0
			   @continue_label
			   0;JMP
			   continue_label
	          """ + "\n\n";
}



// Translate push comands
String translatePush(String arg1, String arg2, String inputFile) {
	if (arg1 == "constant") {
		 return translatePushConstant(arg2);
	}
	else if (arg1 in ["local", "argument", "this", "that"]) {
		// local
		if (arg1 == "local") {
			return pushStackSegment("LCL",arg2);
		}
		// argument
		else if (arg1 == "argument") {
			return pushStackSegment("ARG",arg2);
		}
		// this
		else if (arg1 == "this") {
			return pushStackSegment("THIS",arg2);
		}
		// that
		else {
			return pushStackSegment("THAT",arg2);
		}
	}
	// static
	else if (arg1 == "static") {
		return ""; // TODO
	}
	// other
	else {
		throw Exception("Illegal push argument");
	}
}

// Translate pop comands
String translatePop (String arg1, String arg2, String inputFile) {
	if (arg1 in ["local", "argument", "this", "that"]) {
		// local
		if (arg1 == "local") {
			return popStackSegment("LCL",arg2);
		}
		// argument
		else if (arg1 == "argument") {
			return popStackSegment("ARG",arg2);
		}
		// this
		else if (arg1 == "this") {
			return popStackSegment("THIS",arg2);
		}
		// that
		else {
			return popStackSegment("THAT",arg2);
		}
	}
	// static
	else if (arg1 == "static") {
		return ""; // TODO
	}
	// other
	else {
		throw Exception("Illegal pop argument");
	}
}

// Translate goto commands
String translateGoto(String label){
	return "";  // TODO
}

// Translate label commands
String translateLabel(String label){
	return ""; // TODO
}

// Translate if commands
String translateIf(String label){
	return ""; // TODO
}

// Translate fucntion commands
String translateFunction(String functionName, String numVars){
	return ""; // TODO
}

// Translate call commands
String translateCall(String functionName, String numArgs){
	return ""; // TODO
}

// Translate return commands
String translateReturn(){
	return ""; // TODO
}

//push local/argument/this/that to the stack
String pushStackSegment(String type, String arg2){
	return """@""" + 
			arg2 + 
			"\n" +
			"""D=A
			   @""" +
			type + 
			"\n" +
			"""A=M+D
			   D=M
			   @SP
			   M=M+A
			   A=M-1
			   M=D""" + "\n\n";
	
	
	
}

// pop local/argument/this/that to be stored in R13
String popStackSegment(String type, String arg2){
	return """@""" + 
			arg2 + 
			"\n" +
			"""D=A
			   @""" + 
			type + 
			"\n" +
			"""D=D+M
			   @R13
			   M=D
			   @SP
			   AM=M-1
			   D=M
			   M=0
			   @R13
			   A=M
			   M=D""" + "\n\n";
			  
	
}

String pushStackStatic(String arg2, String inputFile){
	return  "@" +
			inputFile  +
			"." +
			arg2 +
			"\n" +
			"D=M" +
			"""@SP
	           M=M+1
	           A=M-1
	           M=D""";
}

String popStackStatic(String arg2, String inputFile){
	return """@SP
	          AM=M-1
	          D=M
	          M=0""" +
			"@" +
			inputFile  +
			"." +
			arg2 +
			"\n" +
			"D=M";	
}