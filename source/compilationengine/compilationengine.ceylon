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
		if (exists token = getNextToken()[1]) {
			if (token == "class") {
				compileClass();
			}
		}
		return compilation;
	}
	
	String[] getToken(String? tokenString) {
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
	
	String[] getNextToken() {
		return getToken(tokens[index]);
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
				throw Exception("Class name must be an identifier");
			}
		}
		// add '{' symbol
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Expected '{' after class name");
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
				throw Exception("Expected '}' after class");
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
				throw Exception("Invalid type in class variable declaration");
			}
		}
		// add varName
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Variable name must be an identifier");
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
							throw Exception("Variable name must be an identifier");
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
				throw Exception("Expected ';' after class variable declaration");
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
				throw Exception("Invalid type in subroutine declaration");
			}
		}
		// add subroutine name
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Subroutine name must be an identifier");
			}
		}
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Expected '(' after class variable declaration");
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
				throw Exception("Expected ')' after class variable declaration");
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
				throw Exception("Invalid type in parameter list");
			}
		}
		// add varName
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Variable name must be an identifier");
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
							throw Exception("Variable name must be an identifier");
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
				throw Exception("Expected '(' after class variable declaration");
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
				throw Exception("Expected '(' after class variable declaration");
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
				throw Exception("Invalid type in variable declaration");
			}
		}
		// add varName
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Variable name must be an identifier");
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
							throw Exception("Variable name must be an identifier");
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
				throw Exception("Expected ';' after class");
			}
		}
		compilation += "</varDec>";
	}
	
	// Compiles a sequence of statements
	// Does not handle enclosing "{}"
	void compileStatements() {
		compilation += "<statements>";
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
		compilation += "</statements>";
	}
	
	// Compiles a let
	void compileLet() {
		compilation += "<letStatement>";
		// add let keyword
		compilation += tokens[index++] else "" + "\n";
		// add var name
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";
			}
			else {
				throw Exception("Variable name must be an identifier");
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
						throw Exception("Expected ']' in let statement");
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
				throw Exception("Expected '=' in let statement");
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
				throw Exception("Expected ';' in let statement");
			}
		}
		compilation += "</letStatement>";
	}
	
	// Compiles an if statement (possibly w/ else)
	void compileIf() {
		compilation += "<ifStatement>";
		// add if keyword
		compilation += tokens[index++] else "" + "\n";
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected '(' in if statement condition");
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
				throw Exception("Expected ')' in if statement condition");
			}
		}
		// add '{'
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected '{' in if statement body");
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
				throw Exception("Expected '}' in if statement body");
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
						throw Exception("Expected '{' in else statement body");
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
						throw Exception("Expected '}' in else statement body");
					}
				}
			}
		}
		compilation += "</ifStatement>";
	}
	
	// Compiles a while
	void compileWhile() {
		compilation += "<whileStatement>";
		// add while keyword
		compilation += tokens[index++] else "" + "\n";
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected '(' in while statement");
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
				throw Exception("Expected ')' in while statement");
			}
		}
		// add '{'
		if (exists token = getNextToken()[1]) {
			if (token == "{") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected '{' in while statement");
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
				throw Exception("Expected '}' in while statement");
			}
		}
		compilation += "</whileStatement>";
	}
	
	// Compiles a do statement
	void compileDo() {
		compilation += "<doStatement>";
		// add do statement
		compilation += tokens[index++] else "" + "\n";
		// add subroutine call --
		// add identifier
		if (exists type = getNextToken()[0]) {
			if (type == "identifier") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected identifier in do statement");
			}
		}
		// add optional dot and identifier
		if (exists token = getNextToken()[0]) {
			if (token == ".") {
				// add '.'
				compilation += tokens[index++] else "" + "\n";
				// add subroutine name
				if (exists type = getNextToken()[0]) {
					if (type == "identifier") {
						compilation += tokens[index++] else "" + "\n";						
					}
					else {
						throw Exception("Expected identifier in do statement");
					}
				}						
			}
			else {
				throw Exception("Expected identifier in do statement");
			}
		}
		// add '('
		if (exists token = getNextToken()[1]) {
			if (token == "(") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected '(' in do statement");
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
				throw Exception("Expected ')' in do statement");
			}
		}
		// add semicolon
		if (exists token = getNextToken()[1]) {
			if (token == ";") {
				compilation += tokens[index++] else "" + "\n";						
			}
			else {
				throw Exception("Expected ';' in do statement");
			}
		}
		compilation += "</doStatement>";
	}
	
	// Compiles a return
	void compileReturn() {
		compilation += "<returnStatement>";
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
				throw Exception("Expected ';' in do statement");
			}
		}
		compilation += "</returnStatement>";
	}
	
	// Compile an expression
	void compileExpression() {
		compilation += "<expression>";
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
		compilation += "</expression>";
	}
	
	// Compiles a term
	// if current token is an identifier, the routine must
	// distinguish between variable, array entry, or subroutine call
	// A single look-ahead token, which may be one of '[', '(', or '.' suffices
	// to distinguish between the possibilities
	// Any other token is not part of this term and should not be advanced over.
	void compileTerm() {
		compilation += "<term>";
		if (exists type = getNextToken()[0]) {
			if (type in ["integerConstant", "stringConstant", "identifier"]) {
				
			}
			else if (exists token = getNextToken()[1]) {
				if (token in ["true", "false", "null", "this"]) {
					
				}
			}
		}
		compilation += "</term>";
	}
	
	// Compiles a (possibly empty) comma separated
	// list of expressions
	void compileExpressionList() {
		compilation += "<expressionList>";
		// optional expression list
		
		compilation += "</expressionList>";
	}
}