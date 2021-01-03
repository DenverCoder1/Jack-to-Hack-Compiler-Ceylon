// Jack Tokenizer
// Jonah Lawrence
// Daniel Klein

import files {
	readLines
}
import ceylon.regex {
	Regex,
	regex,
	MatchResult
}
import vmwriter {
	VMWriter
}
import symboltable {
	SymbolTable
}
import ceylon.collection {
	HashMap
}

shared class CompilationEngine {
	String[] tokens;
	variable String compilation = "";
	variable Integer index = 1;
	variable Integer indentLevel = 0;
	VMWriter vmWriter;
	SymbolTable symbolTable;
	variable Integer labelNum = 0;
	
	// Create a new compilation engine
	shared new (String dir, String file, String suffix) {
		// Open .xml file for compilation
		tokens = readLines(dir + file + suffix + ".xml");
		// create vm writer
		vmWriter = VMWriter(dir, file);
		symbolTable = SymbolTable();
	}
	
	shared String compile() {
		if (getNextToken()[1] == "class") {
			compileClass();
		}
		else {
			compilationError("Expected 'class' at start of program");
		}
		return compilation;
	}
	
	// get type and value from token as string from xml
	[String, String] getToken(String? tokenString) {
		if (exists tokenString) {
			Regex re = regex("<(.*?)>\\s?(.*?)\\s?</(.*?)>");
			String type;
			String token;
			MatchResult? tokenMatch = re.find(tokenString);
			if (exists tokenMatch) {
				String?[] groups = tokenMatch.groups;
				type = groups[0] else "";
				token = groups[1] else "";
				return [type, token];
			}
		}
		return ["", ""];
	}
	
	// get type and value for current token
	[String, String] getNextToken() {
		return getToken(tokens[index]);
	}
	
	// get type and value for token after current token
	[String, String] getLookAheadToken() {
		return getToken(tokens[index+1]);
	}
	
	// add string/label to output
	void writeString(String str) {
		compilation += " ".repeat(indentLevel);
		compilation += str;
		compilation += "\n";
	}
	
	// add token to output
	void writeNextToken() {
		if (exists token = tokens[index++]) {
			writeString(token);
		}
	}
	
	void compilationError(String message) {
		// context for debugging
		print(tokens[index - 3]);
		print(tokens[index - 2]);
		print(tokens[index - 1]);
		print("---> " + (tokens[index] else "") + " <---");
		print(tokens[index + 1]);
		print(tokens[index + 2]);
		print("");
		// throw exception
		throw Exception(message);
	}
	
	// Compiles a complete class
	void compileClass() {
		writeString("<class>");
		indentLevel += 2;
		// add class keyword
		writeNextToken();
		// add className identifier
		String className = getNextToken()[1];
		if (getNextToken()[0] == "identifier") {
			
			writeNextToken();
		}
		else {
			compilationError("Class name must be an identifier");
		}
		// add '{' symbol
		if (getNextToken()[1] == "{") {
			writeNextToken();
		}
		else {
			compilationError("Expected '{' after class name");
		}
		// add class variable declarations
		while (getNextToken()[1] in ["static", "field"]) {
			compileClassVarDec();
		}
		// add subroutine declaration
		while (getNextToken()[1] in ["constructor", "function", "method"]) {
			compileSubroutineDec(className + ".");
		}
		// add '}' symbol
		if (getNextToken()[1] == "}") {
			writeNextToken();
		}
		else {
			compilationError("Expected '}' after class");
		}
		indentLevel -= 2;
		writeString("</class>");
	}
	
	// Compiles a static variable declaration,
	// or a field declaration
	void compileClassVarDec() {
		writeString("<classVarDec>");
		indentLevel += 2;
		// add static/field keyword
		String kind = getNextToken()[1];
		writeNextToken();
		// add identifier type
		String type = getNextToken()[1];
		if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Invalid type in class variable declaration");
		}
		// add varName
		if (getNextToken()[0] == "identifier") {
			// define identifier
			String name = getNextToken()[1];
			symbolTable.define(name, type, kind);
			writeNextToken();
		}
		else {
			compilationError("Variable name must be an identifier");
		}
		// add additional variables
		while (getNextToken()[1] == ",") {
			writeNextToken();
			// add varName
			if (getNextToken()[0] == "identifier") {
				String name = getNextToken()[1];
				symbolTable.define(name, type, kind);
				writeNextToken();
			}
			else {
				compilationError("Variable name must be an identifier");
			}
		}
		// add semicolon
		if (getNextToken()[1] == ";") {
			writeNextToken();
		}
		else {
			compilationError("Expected ';' after class variable declaration");
		}
		indentLevel -= 2;
		writeString("</classVarDec>");
	}
	
	// Compiles a complete method, function,
	// method, or constructor
	void compileSubroutineDec(String className = "") {
		writeString("<subroutineDec>");
		indentLevel += 2;
		// clear subroutine table
		symbolTable.startSubroutine();
		// add method type keyword
		String subroutineType = getNextToken()[1];
		writeNextToken();
		// add return type
		if (getNextToken()[1] in ["void", "int", "char", "boolean"] || getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Invalid type in subroutine declaration");
		}
		// add subroutine name
		String subroutineName = getNextToken()[1];
		if (getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Subroutine name must be an identifier");
		}
		// add '('
		if (getNextToken()[1] == "(") {
			writeNextToken();
		}
		else {
			compilationError("Expected '(' after class variable declaration");
		}
		// add parameter list
		compileParameterList();
		// add ')'
		if (getNextToken()[1] == ")") {
			writeNextToken();
		}
		else {
			compilationError("Expected ')' after class variable declaration");
		}
		// add subroutine body
		compileSubroutineBody(className, subroutineName, subroutineType);
		// add return type
		indentLevel -= 2;
		writeString("</subroutineDec>");
	}
	
	// Compiles a (possibly empty) parameter list.
	// Does not handle the enclosing "()"
	void compileParameterList() {
		writeString("<parameterList>");
		indentLevel += 2;
		// check if empty parameter -- skip if empty
		if (getNextToken()[1] != ")") {
			// non-empty parameter list
			// add type
			String type = getNextToken()[1];
			if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
				writeNextToken();
			}			
			else {
				compilationError("Invalid type in parameter list");
			}
			// add varName
			String name = getNextToken()[1];
			if (getNextToken()[0] == "identifier") {
				symbolTable.define(name, type, "argument");
				writeNextToken();
			}
			else {
				compilationError("Variable name must be an identifier");
			}
			// add additional variables
			while (getNextToken()[1] == ",") {
				writeNextToken();
				// add type
				String nextType = getNextToken()[1];
				if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
					writeNextToken();
				}
				else {
					compilationError("Invalid type in parameter list");
				}
				// add varName
				String nextName = getNextToken()[1];
				if (getNextToken()[0] == "identifier") {
					symbolTable.define(nextName, nextType, "argument");
					writeNextToken();
				}
				else {
					compilationError("Variable name must be an identifier");
				}
			}
		}
		indentLevel -= 2;
		writeString("</parameterList>");
	}
	
	// Compiles a subroutine's body
	void compileSubroutineBody(String className, String subroutineName, String subroutineType) {
		writeString("<subroutineBody>");
		indentLevel += 2;
		// add '{'
		if (getNextToken()[1] == "{") {
			writeNextToken();
		}
		else {
			compilationError("Expected '{' in subroutine body");
		}
		// add any variable declarations
		variable Integer numLocals = 0;
		while (getNextToken()[1] == "var") {
			numLocals += compileVarDec();
		}
		if (subroutineType == "method") {
			numLocals++; // this
		}
		// write function statement adding "className." if class name is not empty string
		vmWriter.writeFunction(className + subroutineName, numLocals);
		if (subroutineType == "constructor") {
			vmWriter.writePush("constant", numLocals);
			vmWriter.writeCall("Memory.alloc", 1);
		}
		else if (subroutineType == "method") {
			// first argument of method is pointer[0] (this)
			vmWriter.writePush("argument", 0);
			vmWriter.writeCall("pointer", 0);
		}
		// add statements
		compileStatements();
		// add '}'
		if (getNextToken()[1] == "}") {
			writeNextToken();
		}
		else {
			compilationError("Expected '}' after subroutine body");
		}
		indentLevel -= 2;
		writeString("</subroutineBody>");
	}
	
	// Compiles a var declaration
	Integer compileVarDec() {
		writeString("<varDec>");
		indentLevel += 2;
		// add var keyword
		writeNextToken();
		// count variables
		variable Integer numVars = 1;
		// add type
		String type = getNextToken()[1];
		if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Invalid type in variable declaration");
		}
		// add varName
		String name = getNextToken()[1];
		if (getNextToken()[0] == "identifier") {
			symbolTable.define(name, type, "local");
			writeNextToken();
		}
		else {
			compilationError("Variable name must be an identifier");
		}
		// add additional variables
		while (getNextToken()[1] == ",") {
			writeNextToken();
			// add varName
			String nextName = getNextToken()[1];
			if (getNextToken()[0] == "identifier") {
				symbolTable.define(nextName, type, "local");
				numVars += 1;
				writeNextToken();
			}
			else {
				compilationError("Variable name must be an identifier");
			}
		}
		// add semicolon
		if (getNextToken()[1] == ";") {
			writeNextToken();
		}
		else {
			compilationError("Expected ';' after variable declaration");
		}
		indentLevel -= 2;
		writeString("</varDec>");
		return numVars;
	}
	
	// Compiles a sequence of statements
	// Does not handle enclosing "{}"
	void compileStatements() {
		writeString("<statements>");
		indentLevel += 2;
		while (true) {
			value token = getNextToken()[1];
			if (token == "if") {
				compileIf();
			}
			else if (token == "let") {
				compileLet();
			}
			else if (token == "while") {
				compileWhile();
			}
			else if (token == "do") {
				compileDo();
			}
			else if (token == "return") {
				compileReturn();
			}
			else {
				break;
			}
		}
		indentLevel -= 2;
		writeString("</statements>");
	}
	
	// Compiles a let
	void compileLet() {
		writeString("<letStatement>");
		indentLevel += 2;
		// add let keyword
		writeNextToken();
		// add var name
		String name = getNextToken()[1];
		String kind = symbolTable.kindOf(name);
		Integer index = symbolTable.indexOf(name);
		if (getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Variable name must be an identifier");
		}
		// add optionally, '[' expression ']'
		if (getNextToken()[1] == "[") {
			writeNextToken();
			// add expression
			compileExpression();
			// push index
			vmWriter.writePush(kind, index);
			// add ']'
			if (getNextToken()[1] == "]") {
				writeNextToken();						
			}
			else {
				compilationError("Expected ']' in let statement");
			}
			// add index with base of array
			vmWriter.writeArithmetic("add");
			// add equals sign
			if (getNextToken()[1] == "=") {
				writeNextToken();						
			}
			else {
				compilationError("Expected '=' in let statement");
			}
			// add expression
			compileExpression();
			// array assignment
			vmWriter.writePop("temp", 0); // store expression in temp 0
			vmWriter.writePop("pointer", 1); // store register location of array in that
			vmWriter.writePush("temp", 0);
			vmWriter.writePop("that", 0);
		}
		else {
			// add equals sign
			if (getNextToken()[1] == "=") {
				writeNextToken();
			}
			else {
				compilationError("Expected '=' in let statement");
			}
			// add expression
			compileExpression();
			vmWriter.writePop(kind, index);
		}
		// add semicolon
		if (getNextToken()[1] == ";") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ';' in let statement");
		}
		indentLevel -= 2;
		writeString("</letStatement>");
	}
	
	// Compiles an if statement (possibly w/ else)
	void compileIf() {
		writeString("<ifStatement>");
		indentLevel += 2;
		// set labels
		labelNum++;
		String trueLabel = "TRUE_``labelNum``";
		String falseLabel = "FALSE_``labelNum``";
		String continueLabel = "CONTINUE_``labelNum``";
		// add if keyword
		writeNextToken();
		// add '('
		if (getNextToken()[1] == "(") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '(' in if statement condition");
		}
		// add expression
		compileExpression();
		// write conditions
		vmWriter.writeIf(trueLabel);
		vmWriter.writeGoto(falseLabel);
		vmWriter.writeLabel(trueLabel);
		// add ')'
		if (getNextToken()[1] == ")") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ')' in if statement condition");
		}
		// add '{'
		if (getNextToken()[1] == "{") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '{' in if statement body");
		}
		// add statements
		compileStatements();
		// write continuation
		vmWriter.writeGoto(continueLabel);
		// add '}'
		if (getNextToken()[1] == "}") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '}' in if statement body");
		}
		// optional else
		if (getNextToken()[1] == "else") {
			vmWriter.writeLabel(falseLabel);
			// add else keyword
			writeNextToken();
			// add '{'
			if (getNextToken()[1] == "{") {
				writeNextToken();						
			}
			else {
				compilationError("Expected '{' in else statement body");
			}
			// add statements
			compileStatements();
			// add '}'
			if (getNextToken()[1] == "}") {
				writeNextToken();						
			}
			else {
				compilationError("Expected '}' in else statement body");
			}
		}
		vmWriter.writeLabel(continueLabel);
		indentLevel -= 2;
		writeString("</ifStatement>");
	}
	
	// Compiles a while
	void compileWhile() {
		writeString("<whileStatement>");
		indentLevel += 2;
		// set labels
		labelNum++;
		String whileLabel = "WHILE_``labelNum``";
		String continueLabel = "WHILE_CONTINUE_``labelNum``";
		// add while keyword
		writeNextToken();
		// write while
		vmWriter.writeLabel(whileLabel);
		// add '('
		if (getNextToken()[1] == "(") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '(' in while statement");
		}
		// add expression
		compileExpression();
		// add ')'
		if (getNextToken()[1] == ")") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ')' in while statement");
		}
		// write continue
		vmWriter.writeArithmetic("not");
		vmWriter.writeIf(continueLabel);
		// add '{'
		if (getNextToken()[1] == "{") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '{' in while statement");
		}
		// add statements
		compileStatements();
		// add '}'
		if (getNextToken()[1] == "}") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '}' in while statement");
		}
		// loop
		vmWriter.writeGoto(whileLabel);
		vmWriter.writeLabel(continueLabel);
		indentLevel -= 2;
		writeString("</whileStatement>");
	}
	
	// Compiles a do statement
	void compileDo() {
		writeString("<doStatement>");
		indentLevel += 2;
		// add do statement
		writeNextToken();
		// add subroutine call --
		// add identifier
		variable String subroutineName = getNextToken()[1];
		if (getNextToken()[0] == "identifier") {
			writeNextToken();						
		}
		else {
			compilationError("Expected identifier in do statement");
		}
		Boolean addArgument; // whether to add 'this' argument or not
		// add optional dot and identifier
		if (getNextToken()[1] == ".") {
			// add '.'
			subroutineName += ".";
			writeNextToken();
			// add subroutine name
			if (getNextToken()[0] == "identifier") {
				subroutineName += getNextToken()[1];
				writeNextToken();						
			}
			else {
				compilationError("Expected identifier in do statement after '.'");
			}
			addArgument = false;			
		}
		else {
			addArgument = true;
		}
		// add '('
		if (getNextToken()[1] == "(") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '(' in do statement");
		}
		// add expression list
		variable Integer numArgs = compileExpressionList();
		if (addArgument) {
			numArgs++;
		}
		vmWriter.writeCall(subroutineName, numArgs);
		// add ')'
		if (getNextToken()[1] == ")") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ')' in do statement");
		}
		// ignore result from executing code
		vmWriter.writePop("temp", 0);
		// add semicolon
		if (getNextToken()[1] == ";") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ';' in do statement");
		}
		indentLevel -= 2;
		writeString("</doStatement>");
	}
	
	// Compiles a return
	void compileReturn() {
		writeString("<returnStatement>");
		indentLevel += 2;
		// add return keyword
		writeNextToken();
		// add optional expression
		// next token is not a semicolon
		if (getNextToken()[1] != ";") {
			compileExpression();						
		}
		else {
			// push 0 if void
			vmWriter.writePop("constant", 0);
		}
		// add semicolon
		if (getNextToken()[1] == ";") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ';' in do statement");
		}
		vmWriter.writeReturn();
		indentLevel -= 2;
		writeString("</returnStatement>");
	}
	
	// Compile an expression
	void compileExpression() {
		writeString("<expression>");
		indentLevel += 2;
		compileTerm();
		while (getNextToken()[1] in ["+","-","*","/","&amp;","|","&lt;","&gt;","="]) {
			// add operator to compilation tokens
			String op = getNextToken()[1];
			writeNextToken();
			// add term
			compileTerm();
			// add command for the operator to the vm file
			value commands = HashMap<String,String> {
				"+"     -> "add",
				"-"     -> "sub",
				"&amp;" -> "and",
				"|"     -> "or",
				"&gt;"  -> "gt",
				"&lt;"  -> "lt",
				"="     -> "eq"
			};
			if (exists command = commands[op]) {
				vmWriter.writeArithmetic(command);
			}
			else if (op == "*") {
				vmWriter.writeCall("Math.multiply", 2);
			}
			else if (op == "/") {
				vmWriter.writeCall("Math.divide", 2);
			}
		}
		indentLevel -= 2;
		writeString("</expression>");
	}
	
	// Compiles a term
	// if current token is an identifier, the routine must
	// distinguish between variable, array entry, or subroutine call
	// A single look-ahead token, which may be one of '[', '(', or '.' suffices
	// to distinguish between the possibilities
	// Any other token is not part of this term and should not be advanced over.
	void compileTerm() {
		Boolean isTerm(String type, String token) {
			return (
				type in ["integerConstant", "stringConstant", "identifier"] ||
				token in ["true", "false", "null", "this", "(", ")", "-", "~"]
			);
		}
		// get next token
		value [type, token] = getNextToken();
		if (!isTerm(type, token)) {
			compilationError("Expected a term");
		}
		writeString("<term>");
		indentLevel += 2;
		// if unary op, add it an then compile a term
		if (token in ["-", "~"]) {
			String command = if (token == "-") then "neg" else "not";
			writeNextToken();
			compileTerm();
			vmWriter.writeArithmetic(command);
		}
		// if keyword term, add it as the term
		else if (token in ["false", "null"]) {
			vmWriter.writePush("constant", 0);
			writeNextToken();
		}
		else if (token == "true") {
			vmWriter.writePush("constant", 1);
			writeNextToken();
		}
		else if (token == "this") {
			vmWriter.writePush("pointer", 0);
			writeNextToken();
		}
		// if int const or string const, add it as the term
		else if (type == "integerConstant") {
			Integer|ParseException intVal = Integer.parse(getNextToken()[1]);
			if (is Integer intVal) {
				vmWriter.writePush("constant", intVal);
			}
			writeNextToken();
		}
		else if (type == "stringConstant") {
			String strVal = getNextToken()[1];
			vmWriter.writePush("constant", strVal.size);
			vmWriter.writeCall("String.new", 1);
			for (letter in strVal) {
				vmWriter.writePush("constant", letter.integer);
				vmWriter.writeCall("String.appendChar", 2);
			}
			writeNextToken();
		}
		// if expression in parenthesis, add it
		else if (token == "(") {
			// write '('
			writeNextToken();
			// add expression
			compileExpression();
			// write ')'
			if (getNextToken()[1] == ")") {
				writeNextToken();
			}
			else {
				compilationError("Expected ')' in term");
			}
		}
		// check next token
		else {
			String lookAheadToken = getLookAheadToken()[1];
			// add array access
			if (lookAheadToken == "[") {
				String kind = symbolTable.kindOf(getNextToken()[1]);
				Integer index = symbolTable.indexOf(getNextToken()[1]);
				if (getNextToken()[0] == "identifier") {
					// add identifier
					writeNextToken();
					// add '['
					writeNextToken();
					// add expression
					compileExpression();
					// translate array access
					vmWriter.writePush(kind, index);
					vmWriter.writeArithmetic("add");
					vmWriter.writePop("pointer", 1);
					vmWriter.writePush("that", 0);
					// add ']'
					if (getNextToken()[1] == "]") {
						writeNextToken();
					}
					else {
						compilationError("Expected ']' in expression");
					}
				}
				else {
					compilationError("Expected identifer");
				}
			}
			// add subroutine call
			else if (lookAheadToken in ["(", "."]) {
				// add identifier
				variable String subroutineName = getNextToken()[1];
				if (getNextToken()[0] == "identifier") {
					writeNextToken();						
				}
				else {
					compilationError("Expected identifier in term as class name or subroutine");
				}
				Boolean addArgument; // whether to add 'this' argument or not
				// add optional dot and identifier
				if (getNextToken()[1] == ".") {
					subroutineName += ".";
					// add '.'
					writeNextToken();
					// add subroutine name
					if (getNextToken()[0] == "identifier") {
						subroutineName += getNextToken()[1];
						writeNextToken();						
					}
					else {
						compilationError("Expected valid subroutine name in term");
					}		
					addArgument = false;			
				}
				else {
					addArgument = true;
				}
				// add '('
				if (getNextToken()[1] == "(") {
					writeNextToken();						
				}
				else {
					compilationError("Expected '(' in term");
				}
				// add expression list
				variable Integer numArgs = compileExpressionList();
				if (addArgument) {
					numArgs++;
				}
				vmWriter.writeCall(subroutineName, numArgs);
				// add ')'
				if (getNextToken()[1] == ")") {
					writeNextToken();						
				}
				else {
					compilationError("Expected ')' in term");
				}
			}
			// add identifier (variable)
			else {
				if (getNextToken()[0] == "identifier") {
					String kind = symbolTable.kindOf(getNextToken()[1]);
					Integer index = symbolTable.indexOf(getNextToken()[1]);
					vmWriter.writePush(kind, index);
					writeNextToken();	
				}
				else {
					compilationError("Expected identifier in term");
				}
			}
		}
		indentLevel -= 2;
		writeString("</term>");
	}
	
	// Compiles a (possibly empty) comma separated
	// list of expressions
	Integer compileExpressionList() {
		writeString("<expressionList>");
		indentLevel += 2;
		variable Integer numArgs = 0;
		// optional expression list
		if (getNextToken()[1] != ")") {
			// add expression
			compileExpression();
			numArgs++;
			// check for additional expressions
			while (getNextToken()[1] == ",") {
				// add ','
				writeNextToken();
				// add expression
				compileExpression();
				numArgs++;
			}
		}
		indentLevel -= 2;
		writeString("</expressionList>");
		return numArgs;
	}
}