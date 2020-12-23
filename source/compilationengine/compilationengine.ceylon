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

shared class CompilationEngine {
	String[] tokens;
	variable String compilation = "";
	variable Integer index = 1;
	variable Integer indentLevel = 0;
	
	// Create a new compilation engine
	shared new (String dir, String file) {
		// Open .xml file for compilation
		tokens = readLines(dir + file + ".xml");
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
			compileSubroutineDec();
		}
		// add '}' symbol
		if (getNextToken()[1] == "}") {
			writeNextToken();
		}
		else {
			compilationError("Expected '}' after class");
		}
		indentLevel -= 2;
		compilation += "</class>";
	}
	
	// Compiles a static variable declaration,
	// or a field declaration
	void compileClassVarDec() {
		writeString("<classVarDec>");
		indentLevel += 2;
		// add static/field keyword
		writeNextToken();
		// add type
		if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Invalid type in class variable declaration");
		}
		// add varName
		if (getNextToken()[0] == "identifier") {
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
	void compileSubroutineDec() {
		writeString("<subroutineDec>");
		indentLevel += 2;
		// add method type keyword
		writeNextToken();
		// add return type
		if (getNextToken()[1] in ["void", "int", "char", "boolean"] || getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Invalid type in subroutine declaration");
		}
		// add subroutine name
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
		compileSubroutineBody();
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
			if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
				writeNextToken();
			}			
			else {
				compilationError("Invalid type in parameter list");
			}
			// add varName
			if (getNextToken()[0] == "identifier") {
				writeNextToken();
			}
			else {
				compilationError("Variable name must be an identifier");
			}
			// add additional variables
			while (getNextToken()[1] == ",") {
				writeNextToken();
				// add type
				if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
					writeNextToken();
				}
				else {
					compilationError("Invalid type in parameter list");
				}
				// add varName
				if (getNextToken()[0] == "identifier") {
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
	void compileSubroutineBody() {
		writeString("<subroutineBody>");
		indentLevel += 2;
		// add '{'
		if (getNextToken()[1] == "{") {
			writeNextToken();
		}
		else {
			compilationError("Expected '(' after class variable declaration");
		}
		// add any variable declarations
		while (getNextToken()[1] == "var") {
			compileVarDec();
		}
		// add statements
		compileStatements();
		// add '}'
		if (getNextToken()[1] == "}") {
			writeNextToken();
		}
		else {
			compilationError("Expected '(' after class variable declaration");
		}
		indentLevel -= 2;
		writeString("</subroutineBody>");
	}
	
	// Compiles a var declaration
	void compileVarDec() {
		writeString("<varDec>");
		indentLevel += 2;
		// add var keyword
		writeNextToken();
		// add type
		if (getNextToken()[1] in ["int", "char", "boolean"] || getNextToken()[0] == "identifier") {
			writeNextToken();
		}
		else {
			compilationError("Invalid type in variable declaration");
		}
		// add varName
		if (getNextToken()[0] == "identifier") {
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
			compilationError("Expected ';' after class");
		}
		indentLevel -= 2;
		writeString("</varDec>");
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
			// add ']'
			if (getNextToken()[1] == "]") {
				writeNextToken();						
			}
			else {
				compilationError("Expected ']' in let statement");
			}
		}
		// add equals sign
		if (getNextToken()[1] == "=") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '=' in let statement");
		}
		// add expression
		compileExpression();
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
		// add '}'
		if (getNextToken()[1] == "}") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '}' in if statement body");
		}
		// optional else
		if (getNextToken()[1] == "else") {
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
		indentLevel -= 2;
		writeString("</ifStatement>");
	}
	
	// Compiles a while
	void compileWhile() {
		writeString("<whileStatement>");
		indentLevel += 2;
		// add while keyword
		writeNextToken();
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
		if (getNextToken()[0] == "identifier") {
			writeNextToken();						
		}
		else {
			compilationError("Expected identifier in do statement");
		}
		// add optional dot and identifier
		if (getNextToken()[1] == ".") {
			// add '.'
			writeNextToken();
			// add subroutine name
			if (getNextToken()[0] == "identifier") {
				writeNextToken();						
			}
			else {
				compilationError("Expected identifier in do statement after '.'");
			}						
		}
		// add '('
		if (getNextToken()[1] == "(") {
			writeNextToken();						
		}
		else {
			compilationError("Expected '(' in do statement");
		}
		// add expression list
		compileExpressionList();
		// add ')'
		if (getNextToken()[1] == ")") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ')' in do statement");
		}
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
		// add semicolon
		if (getNextToken()[1] == ";") {
			writeNextToken();						
		}
		else {
			compilationError("Expected ';' in do statement");
		}
		indentLevel -= 2;
		writeString("</returnStatement>");
	}
	
	// Compile an expression
	void compileExpression() {
		writeString("<expression>");
		indentLevel += 2;
		compileTerm();
		while (getNextToken()[1] in ["+","-","*","/","&amp;","|","&lt;","&gt;","="]) {
			// add op
			writeNextToken();
			// add term
			compileTerm();
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
			writeNextToken();
			compileTerm();
		}
		// if keyword term, add it as the term
		else if (token in ["true", "false", "null", "this"]) {
			writeNextToken();
		}
		// if int const or string const, add it as the term
		else if (type in ["integerConstant", "stringConstant"]) {
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
				if (getNextToken()[0] == "identifier") {
					// add identifier
					writeNextToken();
					// add '['
					writeNextToken();
					// add expression
					compileExpression();
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
				if (getNextToken()[0] == "identifier") {
					writeNextToken();						
				}
				else {
					compilationError("Expected identifier in term as class name or subroutine");
				}
				// add optional dot and identifier
				if (getNextToken()[1] == ".") {
					// add '.'
					writeNextToken();
					// add subroutine name
					if (getNextToken()[0] == "identifier") {
						writeNextToken();						
					}
					else {
						compilationError("Expected valid subroutine name in term");
					}					
				}
				// add '('
				if (getNextToken()[1] == "(") {
					writeNextToken();						
				}
				else {
					compilationError("Expected '(' in term");
				}
				// add expression list
				compileExpressionList();
				// add ')'
				if (getNextToken()[1] == ")") {
					writeNextToken();						
				}
				else {
					compilationError("Expected ')' in term");
				}
			}
			// add identifier
			else {
				if (getNextToken()[0] == "identifier") {
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
	void compileExpressionList() {
		writeString("<expressionList>");
		indentLevel += 2;
		// optional expression list
		if (getNextToken()[1] != ")") {
			// add expression
			compileExpression();
			// check for additional expressions
			while (getNextToken()[1] == ",") {
				// add ','
				writeNextToken();
				// add expression
				compileExpression();
			}
		}
		indentLevel -= 2;
		writeString("</expressionList>");
	}
}