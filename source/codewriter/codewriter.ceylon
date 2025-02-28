// VM Translator
// Jonah Lawrence
// Daniel Klein

import ceylon.collection {
	HashMap
}

shared class CodeWriter {
	
	variable Integer labelNumber;
	
	variable Integer callNumber;
	
	shared new () {
		this.labelNumber = 0;
		this.callNumber = 0;
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
	
	// Comment a line of vm
	shared String comment(String line) {
		return "// " + line + "\n";
	}
	
	// initialize sp, local, argument, this, that
	shared String initializeConstants() {
		return """// set sp 256
		          @256
		          D=A
		          @SP
		          M=D
		          
		          """;
	}
	
	shared String sysInit() {
		return translateCall("Sys.init", "0");
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
		return popToD() +
			   """@SP
			      A=M-1
			      """ + 
				"M=M``operator``D\n\n";
	}
	
	// Translate Not and Neg
	String translateUnaryOperator(String operator) {
		return """@SP
		          A=M-1
		          """ + 
				"M=``operator``M\n\n";
	}
	
	
	// Translate Push Constant
	String translatePushConstant(String constant) {
		return  "@" + constant + "\n" + 
				"D=A\n" +
				pushToD() + 
				"\n";
	}
	
	// Translate Eq, Gt, Lt
	String translateComparator(String operator) {
		//looking for more consice version
		labelNumber += 1;
		return popToD() + 
			   """@SP
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
	
	
	
	// Translate push commands
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
			throw Exception("Illegal argument 2 to push pointer. Argument was ``arg2``");
		}
		// temp
		else if (arg1 == "temp") {
			Integer|ParseException register = Integer.parse(arg2);
			if (is Integer register) {
				return pushPointerOrTemp(register + 5);
			}
			throw Exception("Illegal argument 2 to push temp. Argument was ``arg2``");
		}
		// other
		else {
			throw Exception("Illegal push argument 1. Argument was ``arg1``");
		}
	}
	
	// Translate pop commands
	String translatePop (String arg1, String arg2, String inputFile) {
		if (arg1 in ["local", "argument", "this", "that"]) {
			// local
			if (arg1 == "local") {
				return popSegment("LCL", arg2);
			}
			// argument
			else if (arg1 == "argument") {
				return popSegment("ARG", arg2);
			}
			// this
			else if (arg1 == "this") {
				return popSegment("THIS", arg2);
			}
			// that
			else {
				return popSegment("THAT", arg2);
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
			throw Exception("Illegal argument 2 to pop pointer. Argument was ``arg2``");
		}
		// temp
		else if (arg1 == "temp") {
			Integer|ParseException register = Integer.parse(arg2);
			if (is Integer register) {
				return popPointerOrTemp(register + 5);
			}
			throw Exception("Illegal argument 2 to pop temp. Argument was ``arg2``");
		}
		// other
		else {
			throw Exception("Illegal pop argument 1. Argument was ``arg1``");
		}
	}
	
	String pushToD() {
		return """@SP
		          M=M+1
		          A=M-1
		          M=D
		          """;
	}
	
	String popToD() {
		return """@SP
		          AM=M-1
		          D=M
		          M=0
		          """;
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
				   D=M""" +
				"\n" +
				pushToD() +
				"\n";
	}
	
	// pop local/argument/this/that to be stored in R13
	String popSegment(String type, String arg2) {
		return "@``arg2``\n" + 
				"""D=A
				   @""" + 
				type + 
				"\n" +
				"""D=D+M
				   @R13
				   M=D""" +
				"\n" +
				popToD() +
				"""@R13
				   A=M
				   M=D
				   
				   """;
	}
	
	// translate push static
	String pushStatic(String arg2, String inputFile) {
		return  "@``inputFile``.``arg2``\n" +
				"D=M\n" + 
				pushToD() +
				"\n";
	}
	
	// translate pop static
	String popStatic(String arg2, String inputFile) {
		return popToD() +
				"@``inputFile``.``arg2``\n" +
				"""M=D
				   
				   """;	
	}
	
	// translate push pointer / push temp
	String pushPointerOrTemp(Integer register) {
		return "@``register``\n" + 
				"D=M\n" +
				pushToD() + 
				"\n";
	}
	
	// translate pop pointer / pop temp
	String popPointerOrTemp(Integer register) {
		return popToD() +
				"@``register``\n" + 
				"M=D\n\n";
	}
	
	// Translate goto commands
	String translateGoto(String arg1) {
		return "@``arg1``\n" +
				"0;JMP\n\n";
	}
	
	// Translate label commands
	String translateLabel(String arg1) {
		return "(``arg1``)\n\n";
	}
	
	// Translate if commands
	String translateIf(String arg1) {
		return popToD() +
				"@``arg1``\n" +
				"D;JNE\n\n";
	}
	
	// Translate function commands
	String translateFunction(String arg1, String arg2) {
		variable String locals = "";
		Integer|ParseException numLocals = Integer.parse(arg2);
		if (is Integer numLocals) {
			if (numLocals > 0) {
				//Initialize the local variables of the callee
				for (i in 1..numLocals) {
					locals += translatePushConstant("0");
					locals += popSegment("LCL", i.string);
				}
			}
		}
		return translateLabel(arg1) + locals;
	}
	
	// Translate call commands
	String translateCall(String arg1, String arg2) {
		callNumber += 1;
		return "@return.``arg1``." + callNumber.string + "\n" +
				"D=A\n" +
				pushToD() +
				"""@LCL
				   D=M
				   """ +
				pushToD() +
				"""@ARG
				   D=M
				   """ +
				pushToD() +
				"""@THIS
				   D=M
				   """ +
				pushToD() +
				"""@THAT
				   D=M
				   """ +
				pushToD() +
				"""@SP
				   D=M
				   @5
				   D=D-A
				   """ +
				"@``arg2``\n" +
				"""D=D-A
				   @ARG
				   M=D
				   @SP
				   D=M
				   @LCL
				   M=D
				   """ + 
				translateGoto(arg1) +
				translateLabel("return.``arg1``." + callNumber.string) + 
				"\n\n";
				
	}
	
	// Translate return commands
	String translateReturn() {
		return """@LCL
		          D=M
		          @R13
		          M=D
		          @5
		          D=D-A
		          A=D
		          D=M
		          @R14
		          M=D
		          """ +
				popToD() +
            	"""@ARG
            	   A=M
            	   M=D
            	   D=A+1
            	   @SP
            	   M=D
            	   @R13
            	   A=M-1
            	   D=M
            	   @THAT
            	   M=D
            	   @2
            	   D=A
            	   @R13
            	   D=M-D
            	   A=D
            	   D=M
            	   @THIS
            	   M=D
            	   @3
            	   D=A
            	   @R13
            	   D=M-D
            	   A=D
            	   D=M
            	   @ARG
            	   M=D
            	   @4
            	   D=A
            	   @R13
            	   D=M-D
            	   A=D
            	   D=M
            	   @LCL
            	   M=D
            	   @R14
            	   A=M
            	   0;JMP
            	   
            	   """;
	}
}