import ceylon.collection {
	HashMap
}

shared variable Integer labelNumber = 0;

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

shared String initializeConstants() {
	return """// set sp 256
	          @256
	          D=A
	          @SP
	          M=D
	          
	          // set local 300
	          @300
	          D=A
	          @LCL
	          M=D
	          
	          // set argument 400
	          @400
	          D=A
	          @ARG
	          M=D
	          
	          // set this 3000
	          @3000
	          D=A
	          @THIS
	          M=D
	          
	          // set that 3010
	          @3010
	          D=A
	          @THAT
	          M=D
	          
	          """;
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
		return translateComparator(op);
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
			"M=M" + operator + "D" + "\n\n";
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
	labelNumber += 1;
	return """@SP
	          AM=M-1
	          D=M
	          M=0
	          @SP
	          A=M-1
	          D=M-D
	          @true_""" + labelNumber.string + "\n" +
	          "D;J" +
			operator + "\n" +
			"@false_" + labelNumber.string + "\n" +
			"0;JMP" + "\n" +
			"(true_" + labelNumber.string + ")\n" +
			"""@SP
			   A=M-1
			   M=-1
			   @continue_""" + labelNumber.string + "\n" +
			"""0;JMP
			   (false_""" + labelNumber.string + ")\n" +
			"""@SP
			   A=M-1
			   M=0
			   @continue_""" + labelNumber.string + "\n" +
			"""0;JMP
			   (continue_""" + labelNumber.string + ")\n\n";
}



// Translate push comands
String translatePush(String arg1, String arg2, String inputFile) {
	if (arg1 == "constant") {
		 return translatePushConstant(arg2);
	}
	else if (arg1 in ["local", "argument", "this", "that"]) {
		// local
		if (arg1 == "local") {
			return pushSegment("LCL",arg2);
		}
		// argument
		else if (arg1 == "argument") {
			return pushSegment("ARG",arg2);
		}
		// this
		else if (arg1 == "this") {
			return pushSegment("THIS",arg2);
		}
		// that
		else {
			return pushSegment("THAT",arg2);
		}
	}
	// static
	else if (arg1 == "static") {
		return pushStatic(arg2, inputFile);
	}
	// pointer
	else if (arg1 == "pointer") {
		Integer|ParseException register = Integer.parse(arg2);
		if (is Integer register) {
			return pushPointerOrTemp(register + 3);
		}
		throw Exception("Illegal argument 2 to push pointer");
	}
	// temp
	else if (arg1 == "temp") {
		Integer|ParseException register = Integer.parse(arg2);
		if (is Integer register) {
			return pushPointerOrTemp(register + 5);
		}
		throw Exception("Illegal argument 2 to push temp");
	}
	// other
	else {
		throw Exception("Illegal push argument 1");
	}
}

// Translate pop comands
String translatePop (String arg1, String arg2, String inputFile) {
	if (arg1 in ["local", "argument", "this", "that"]) {
		// local
		if (arg1 == "local") {
			return popSegment("LCL",arg2);
		}
		// argument
		else if (arg1 == "argument") {
			return popSegment("ARG",arg2);
		}
		// this
		else if (arg1 == "this") {
			return popSegment("THIS",arg2);
		}
		// that
		else {
			return popSegment("THAT",arg2);
		}
	}
	// static
	else if (arg1 == "static") {
		return popStatic(arg2, inputFile);
	}
	// pointer
	else if (arg1 == "pointer") {
		Integer|ParseException register = Integer.parse(arg2);
		if (is Integer register) {
			return popPointerOrTemp(register + 3);
		}
		throw Exception("Illegal argument 2 to pop pointer");
	}
	// temp
	else if (arg1 == "temp") {
		Integer|ParseException register = Integer.parse(arg2);
		if (is Integer register) {
			return popPointerOrTemp(register + 5);
		}
		throw Exception("Illegal argument 2 to pop temp");
	}
	// other
	else {
		throw Exception("Illegal pop argument 1");
	}
}

// Translate goto commands
String translateGoto(String label) {
	return "";  // TODO
}

// Translate label commands
String translateLabel(String label) {
	return ""; // TODO
}

// Translate if commands
String translateIf(String label) {
	return ""; // TODO
}

// Translate fucntion commands
String translateFunction(String functionName, String numVars) {
	return ""; // TODO
}

// Translate call commands
String translateCall(String functionName, String numArgs) {
	return ""; // TODO
}

// Translate return commands
String translateReturn() {
	return ""; // TODO
}

//push local/argument/this/that to the stack
String pushSegment(String type, String arg2) {
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
			   M=M+1
			   A=M-1
			   M=D
			   
			   """;
}

// pop local/argument/this/that to be stored in R13
String popSegment(String type, String arg2) {
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
			   M=D
			   
			   """;
}

String pushStatic(String arg2, String inputFile) {
	return  "@" +
			inputFile  +
			"." +
			arg2 +
			"\n" +
			"D=M" +
			"\n" +
			"""@SP
			   M=M+1
			   A=M-1
			   M=D
			   
			   """;
}

String popStatic(String arg2, String inputFile) {
	return """@SP
	          AM=M-1
	          D=M
	          M=0
	          """ +
			"@" +
			inputFile  +
			"." +
			arg2 +
			"""
			   M=D
			   
			   """;	
}

String pushPointerOrTemp(Integer register) {
	return "@``register``\n" + 
			"D=M" +
			"""
			   @SP
			   M=M+1
			   A=M-1
			   M=D
			   
			   """;
}

String popPointerOrTemp(Integer register) {
	return """@SP
	          AM=M-1
	          D=M
	          M=0
	          """ +
			"@``register``\n" + 
			"M=D\n\n";
}