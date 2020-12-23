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
	variable Integer index = 1;
	variable String compilation = "";
	
	// Create a new compilation engine
	shared new (String dir, String file) {
		// Open .xml file for compilation
		tokens = readLines(dir + file + ".xml");
	}
	
	shared String compile() {
		value [type, token] = getNextToken();
		if (token == "class") {
			compileClass();
		}
		return compilation;
	}
	
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
	
	[String, String] getNextToken() {
		return getToken(tokens[index]);
	}
	
	[String, String] getLookAheadToken() {
		return getToken(tokens[index+1]);
	}
	
	void compilationError(String message) {
		print(tokens[index - 3]);
		print(tokens[index - 2]);
		print(tokens[index - 1]);
		print("---> " + (tokens[index] else "") + " <---");
		print(tokens[index + 1]);
		print(tokens[index + 2]);
		print("");
		throw Exception(message);
	}
	
	// Compiles a complete class
	void compileClass() {
		compilation += "<class>\n";
		// add class keyword
		compilation += tokens[index++] else "" + "\n";
		// add className identifier
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Class name must be an identifier");
			}
		}
		// add '{' symbol
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected '{' after class name");
			}
		}
		// add class variable declarations
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token == "static" || token == "field") {
					compileClassVarDec();
				}
				else {
					break;
				}
			}
		}
		// add subroutine declaration
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token in ["constructor", "function", "method"]) {
					compileSubroutineDec();
				}
				else {
					break;
				}
			}
		}
		// add '}' symbol
		if (exists token = getNextToken()[1]) {
			if (token == "}") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected '}' after class");
			}
		}
		compilation += "</class>\n";
	}
	
	// Compiles a static variable declaration,
	// or a field declaration
	void compileClassVarDec() {
		compilation += "<classVarDec>\n";
		// add static/field keyword
		compilation += tokens[index++] else "" + "\n";
		// add type
		if (exists token = getNextToken()[1]) {
			if (token in ["int", "char", "boolean"]) {
				compilation += tokens[index++] else "" + "\n";
			}			
			else if (exists type = getNextToken()[0]) {
				if (type == "identifier") {
					compilation += tokens[index++] else "" + "\n";
				}
			}
			else {
				compilationError("Invalid type in class variable declaration");
			}
		}
		// add varName
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Variable name must be an identifier");
			}
		}
		// add additional variables
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token == ",") {
					compilation += tokens[index++] else "" + "\n";
					// add varName
					if (exists type = getNextToken()[0]) {
						if (type == "identifier") {
							compilation += tokens[index++] else "" + "\n";
						}
						else {
							compilationError("Variable name must be an identifier");
						}
					}
				}
				else {
					break;
				}
			}
		}
		// add semicolon
		if (exists token = getNextToken()[1]) {
			if (token == ";") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected ';' after class variable declaration");
			}
		}
		compilation += "</classVarDec>\n";
	}
	
	// Compiles a complete method, function,
	// method, or constructor
	void compileSubroutineDec() {
		compilation += "<subroutineDec>\n";
		// add method type keyword
		compilation += tokens[index++] else "" + "\n";
		// add return type
		if (exists token = getNextToken()[1]) {
			if (token in ["void", "int", "char", "boolean"]) {
				compilation += tokens[index++] else "" + "\n";
			}			
			else if (exists type = getNextToken()[0]) {
				if (type == "identifier") {
					compilation += tokens[index++] else "" + "\n";
				}
			}
			else {
				compilationError("Invalid type in subroutine declaration");
			}
		}
		// add subroutine name
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Subroutine name must be an identifier");
			}
		}
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected '(' after class variable declaration");
			}
		}
		// add parameter list
		compileParameterList();
		// add ')'
		if (exists token = getNextToken()[1]) {
			if (token == ")") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected ')' after class variable declaration");
			}
		}
		// add subroutine body
		compileSubroutineBody();
		// add return type
		compilation += "</subroutineDec>\n";
	}
	
	// Compiles a (possibly empty) parameter list.
	// Does not handle the enclosing "()"
	void compileParameterList() {
		compilation += "<parameterList>\n";
		// check if empty parameter list
		if (exists token = getNextToken()[1]) {
			if (token == ")") {
				// skip parameter list
				compilation += "</parameterList>\n";
				return;
			}
		}
		// non-empty parameter list
		// add type
		if (exists token = getNextToken()[1]) {
			if (token in ["int", "char", "boolean"]) {
				compilation += tokens[index++] else "" + "\n";
			}			
			else if (exists type = getNextToken()[0]) {
				if (type == "identifier") {
					compilation += tokens[index++] else "" + "\n";
				}
			}
			else {
				compilationError("Invalid type in parameter list");
			}
		}
		// add varName
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Variable name must be an identifier");
			}
		}
		// add additional variables
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token == ",") {
					compilation += tokens[index++] else "" + "\n";
					// add type
					if (exists token2 = getNextToken()[1]) {
						if (token2 in ["int", "char", "boolean"]) {
							compilation += tokens[index++] else "" + "\n";
						}			
						else if (exists type2 = getNextToken()[0]) {
							if (type2 == "identifier") {
								compilation += tokens[index++] else "" + "\n";
							}
						}
						else {
							compilationError("Invalid type in parameter list");
						}
					}
					// add varName
					if (exists type = getNextToken()[0]) {
						if (type == "identifier") {
							compilation += tokens[index++] else "" + "\n";
						}
						else {
							compilationError("Variable name must be an identifier");
						}
					}
				}
				else {
					break;
				}
			}
		}
		compilation += "</parameterList>\n";
	}
	
	// Compiles a subroutine's body
	void compileSubroutineBody() {
		compilation += "<subroutineBody>\n";
		// add '{'
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected '(' after class variable declaration");
			}
		}
		// add any variable declarations
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token == "var") {
					compileVarDec();
				}
				else {
					break;
				}
			}
		}
		// add statements
		compileStatements();
		// add '}'
		if (exists token = getNextToken()[1]) {
			if (token == "}") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected '(' after class variable declaration");
			}
		}
		compilation += "</subroutineBody>\n";
	}
	
	// Compiles a var declaration
	void compileVarDec() {
		compilation += "<varDec>";
		// add var keyword
		compilation += tokens[index++] else "" + "\n";
		// add type
		if (exists token = getNextToken()[1]) {
			if (token in ["int", "char", "boolean"]) {
				compilation += tokens[index++] else "" + "\n";
			}			
			else if (exists type = getNextToken()[0]) {
				if (type == "identifier") {
					compilation += tokens[index++] else "" + "\n";
				}
			}
			else {
				compilationError("Invalid type in variable declaration");
			}
		}
		// add varName
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Variable name must be an identifier");
			}
		}
		// add additional variables
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token == ",") {
					compilation += tokens[index++] else "" + "\n";
					// add varName
					if (exists type = getNextToken()[0]) {
						if (type == "identifier") {
							compilation += tokens[index++] else "" + "\n";
						}
						else {
							compilationError("Variable name must be an identifier");
						}
					}
				}
				else {
					break;
				}
			}
		}
		// add semicolon
		if (exists token = getNextToken()[1]) {
			if (token == ";") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected ';' after class");
			}
		}
		compilation += "</varDec>";
	}
	
	// Compiles a sequence of statements
	// Does not handle enclosing "{}"
	void compileStatements() {
		compilation += "<statements>\n";
		while (true) {
			if (exists token = getNextToken()[1]) {
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
		}
		compilation += "</statements>\n";
	}
	
	// Compiles a let
	void compileLet() {
		compilation += "<letStatement>\n";
		// add let keyword
		compilation += tokens[index++] else "" + "\n";
		// add var name
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Variable name must be an identifier");
			}
		}
		// add optionally, '[' expression ']'
		if (exists token = getNextToken()[1]) {
			if (token == "[") {
				compilation += tokens[index++] else "" + "\n";
				// add expression
				compileExpression();
				// add ']'
				if (exists token2 = getNextToken()[1]) {
					if (token2 == "]") {
						compilation += tokens[index++] else "" + "\n";						
					}
					else {
						compilationError("Expected ']' in let statement");
					}
				}
			}
		}
		// add equals sign
		if (exists token = getNextToken()[1]) {
			if (token == "=") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '=' in let statement");
			}
		}
		// add expression
		compileExpression();
		// add semicolon
		if (exists token = getNextToken()[1]) {
			if (token == ";") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected ';' in let statement");
			}
		}
		compilation += "</letStatement>\n";
	}
	
	// Compiles an if statement (possibly w/ else)
	void compileIf() {
		compilation += "<ifStatement>\n";
		// add if keyword
		compilation += tokens[index++] else "" + "\n";
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '(' in if statement condition");
			}
		}
		// add expression
		compileExpression();
		// add ')'
		if (exists token = getNextToken()[1]) {
			if (token == ")") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected ')' in if statement condition");
			}
		}
		// add '{'
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '{' in if statement body");
			}
		}
		// add statements
		compileStatements();
		// add '}'
		if (exists token = getNextToken()[1]) {
			if (token == "}") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '}' in if statement body");
			}
		}
		// optional else
		if (exists token = getNextToken()[1]) {
			if (token == "else") {
				// add else keyword
				compilation += tokens[index++] else "" + "\n";
				// add '{'
				if (exists token2 = getNextToken()[1]) {
					if (token2 == "{") {
						compilation += tokens[index++] else "" + "\n";						
					}
					else {
						compilationError("Expected '{' in else statement body");
					}
				}
				// add statements
				compileStatements();
				// add '}'
				if (exists token3 = getNextToken()[1]) {
					if (token3 == "}") {
						compilation += tokens[index++] else "" + "\n";						
					}
					else {
						compilationError("Expected '}' in else statement body");
					}
				}
			}
		}
		compilation += "</ifStatement>\n";
	}
	
	// Compiles a while
	void compileWhile() {
		compilation += "<whileStatement>\n";
		// add while keyword
		compilation += tokens[index++] else "" + "\n";
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '(' in while statement");
			}
		}
		// add expression
		compileExpression();
		// add ')'
		if (exists token = getNextToken()[1]) {
			if (token == ")") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected ')' in while statement");
			}
		}
		// add '{'
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '{' in while statement");
			}
		}
		// add statements
		compileStatements();
		// add '}'
		if (exists token = getNextToken()[1]) {
			if (token == "}") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '}' in while statement");
			}
		}
		compilation += "</whileStatement>\n";
	}
	
	// Compiles a do statement
	void compileDo() {
		compilation += "<doStatement>\n";
		// add do statement
		compilation += tokens[index++] else "" + "\n";
		// add subroutine call --
		// add identifier
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected identifier in do statement");
			}
		}
		// add optional dot and identifier
		if (exists token = getNextToken()[1]) {
			if (token == ".") {
				// add '.'
				compilation += tokens[index++] else "" + "\n";
				// add subroutine name
				if (exists type = getNextToken()[0]) {
					if (type == "identifier") {
						compilation += tokens[index++] else "" + "\n";						
					}
					else {
						compilationError("Expected identifier in do statement after '.'");
					}
				}						
			}
		}
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected '(' in do statement");
			}
		}
		// add expression list
		compileExpressionList();
		// add ')'
		if (exists token = getNextToken()[1]) {
			if (token == ")") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected ')' in do statement");
			}
		}
		// add semicolon
		if (exists token = getNextToken()[1]) {
			if (token == ";") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected ';' in do statement");
			}
		}
		compilation += "</doStatement>\n";
	}
	
	// Compiles a return
	void compileReturn() {
		compilation += "<returnStatement>\n";
		// add return keyword
		compilation += tokens[index++] else "" + "\n";
		// add optional expression
		if (exists token = getNextToken()[1]) {
			// next token is not a semicolon
			if (token != ";") {
				compileExpression();						
			}
		}
		// add semicolon
		if (exists token = getNextToken()[1]) {
			if (token == ";") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				compilationError("Expected ';' in do statement");
			}
		}
		compilation += "</returnStatement>\n";
	}
	
	// Compile an expression
	void compileExpression() {
		compilation += "<expression>\n";
		compileTerm();
		while (true) {
			if (exists token = getNextToken()[1]) {
				if (token in ["+","-","*","/","&amp;","|","&lt;","&gt;","="]) {
					// add op
					compilation += tokens[index++] else "" + "\n";
					// add term
					compileTerm();
				}
				else {
					break;
				}
			}
		}
		compilation += "</expression>\n";
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
		compilation += "<term>\n";
		// if unary op, add it an then compile a term
		if (token in ["-", "~"]) {
			compilation += tokens[index++] else "" + "\n";
			compileTerm();
		}
		// if keyword term, add it as the term
		else if (token in ["true", "false", "null", "this"]) {
			compilation += tokens[index++] else "" + "\n";
		}
		// if int const or string const, add it as the term
		else if (type in ["integerConstant", "stringConstant"]) {
			compilation += tokens[index++] else "" + "\n";
		}
		// if expression in parenthesis, add it
		else if (token == "(") {
			// write '('
			compilation += tokens[index++] else "" + "\n";
			// add expression
			compileExpression();
			// write ')'
			value [type2, token2] = getNextToken();
			if (token2 == ")") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				compilationError("Expected ')' in term");
			}
		}
		// check next token
		else {
			value [lookAheadType, lookAheadToken] = getLookAheadToken();
			// add array access
			if (lookAheadToken == "[") {
				value [type2, token2] = getNextToken();
				if (type2 == "identifier") {
					// add identifier
					compilation += tokens[index++] else "" + "\n";
					// add '['
					compilation += tokens[index++] else "" + "\n";
					// add expression
					compileExpression();
					// add ']'
					value [type3, token3] = getNextToken();
					if (token3 == "]") {
						compilation += tokens[index++] else "" + "\n";
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
				value [type2, token2] = getNextToken();
				if (type2 == "identifier") {
					compilation += tokens[index++] else "" + "\n";						
				}
				else {
					compilationError("Expected identifier in term as class name or subroutine");
				}
				// add optional dot and identifier
				value [type3, token3] = getNextToken();
				if (token3 == ".") {
					// add '.'
					compilation += tokens[index++] else "" + "\n";
					// add subroutine name
					value [type4, token4] = getNextToken();
					if (type4 == "identifier") {
						compilation += tokens[index++] else "" + "\n";						
					}
					else {
						compilationError("Expected subroutine name in term");
					}					
				}
				// add '('
				value [type5, token5] = getNextToken();
				if (token5 == "(") {
					compilation += tokens[index++] else "" + "\n";						
				}
				else {
					compilationError("Expected '(' in term");
				}
				// add expression list
				compileExpressionList();
				// add ')'
				value [type6, token6] = getNextToken();
				if (token6 == ")") {
					compilation += tokens[index++] else "" + "\n";						
				}
				else {
					compilationError("Expected ')' in term");
				}
			}
			// add identifier
			else {
				value [type2, token2] = getNextToken();
				if (type2 == "identifier") {
					compilation += tokens[index++] else "" + "\n";						
				}
				else {
					compilationError("Expected identifier in term");
				}
			}
		}
		compilation += "</term>\n";
	}
	
	// Compiles a (possibly empty) comma separated
	// list of expressions
	void compileExpressionList() {
		compilation += "<expressionList>\n";
		// optional expression list
		value [type, token] = getNextToken();
		if (token != ")") {
			// add expression
			compileExpression();
			// check for additional expressions
			while (true) {
				value [type2, token2] = getNextToken();
				if (token2 != ",") {
					break;
				}
				else {
					// add ','
					compilation += tokens[index++] else "" + "\n";
					// add expression
					compileExpression();
				}
			}
		}
		compilation += "</expressionList>\n";
	}
}