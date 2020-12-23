// Jack Tokenizer
// Jonah Lawrence
// Daniel Klein

import files {
	readFile
}
import ceylon.regex {
	Regex,
	regex,
	MatchResult
}

shared class Tokenizer {
	variable String input;
	
	shared new (String dir, String file) {
		// Open .jack file for tokenization
		input = readFile(dir + file + ".jack");
	}
	
	// remove comments and spaces on ends
	void stripComments() {
		// remove multi line comments
		input = regex("/\\*(.|\\r|\\n)*?\\*/", true).replace(input, "");
		// remove single line comments
		input = regex("//.*", true).replace(input, "");
	}
	
	shared String tokenize() {
		// tokens string for adding tokens
		variable String tokens = "<tokens>\n";
		// strip comments and whitespace
		stripComments();
		
		variable Integer current = 0;
		
		Character[] whitespace = [' ', '\t', '\n', '\f', '\r'];
		Character[] symbolTokens = ['{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '-', '*', '/', '&', '|', '<', '>', '=', '~'];
		String[] keywords = ["class", "constructor", "function", "method", "field", "static", "var", "int", "char", "boolean", "void", "true", "false", "null", "this", "let", "do", "if", "else", "while", "return"];
		Regex identifierStartSymbol = regex("[A-Za-z_]");
		Regex identifierSymbol = regex("[A-Za-z0-9_]");
		Regex numbers = regex("[0-9]");
		
		while (current < input.size) {
			Character char = input[current] else '\0';
			
			if (char in whitespace) {
				current++;
				continue;
			}
			
			// 
			if (char in symbolTokens) {
				String token;
				if (char == '<') {
					token = "&lt;";
				}
				else if (char == '>') {
					token = "&gt;";
				}
				else if (char == '"') {
					token = "&quot;";
				}
				else if (char == '&') {
					token = "&amp;";
				}
				else {
					token = "``char``";
				}
				tokens += "<symbol> ``token`` </symbol>\n";
				current++;
				continue;
			}
			
			// keyword or identifier
			MatchResult? identifierStartMatch = identifierStartSymbol.find("``char``");
			if (exists identifierStartMatch) {
				variable String word = "``char``";
				while (true) {
					current++;
					Character next = input[current] else '\0';
					MatchResult? identifierSymbolMatch = identifierSymbol.find("``next``");
					if (exists identifierSymbolMatch) {
						word += "``next``";
					} else {
						break;
					}
				}
				if (word in keywords) {
					tokens += "<keyword> ``word`` </keyword>\n";
				} else {
					tokens += "<identifier> ``word`` </identifier>\n";
				}
				continue;
			}
			
			// string constant
			if (char == '"') {
				variable String string = "";
				while (true) {
					current++;
					Character next = input[current] else '\0';
					if (next!='"' && next!='\n') {
						string += "``next``";
					} else {
						break;
					}
				}
				tokens += "<stringConstant> ``string`` </stringConstant>\n";
				current++;
				continue;
			}
			
			// integer constant
			MatchResult? numberMatch = numbers.find("``char``");
			if (exists numberMatch) {
				variable String integer = "``char``";
				while (true) {
					current++;
					Character next = input[current] else '\0';
					MatchResult? numberMatch2 = numbers.find("``next``");
					if (exists numberMatch2) {
						integer += "``next``";
					} else {
						break;
					}
				}
				// parse string as integer
				Integer|ParseException integerNum = Integer.parse(integer);
				if (is Integer integerNum) {
					// check range
					if (integerNum >= 0 && integerNum <= 32767) {
						tokens += "<integerConstant> ``integer`` </integerConstant>\n";
					}
				}
				else {
					throw Exception("Invalid integer constant");
				}
				continue;
			}
			
			throw Exception("Invalid Jack token");
		}
		
		return tokens + "</tokens>";
	}
	
	// Are there more tokens in the input
	Boolean hasMoreTokens() {
		return false;
	}
	
	// Get the next token from input and make it the current token
	// Called only if hasMoreToken is true
	// Initially, there is no current token
	void advance() {
	}
	
	// Returns type of current token
	// KEYWORD, SYMBOL, IDENTIFIER, INT_CONST, STRING_CONST
	String tokenType() {
		return "";
	}
	
	// Return current token KEYWORD token
	// CLASS, METHOD, FUNCTION, CONSTRUCTOR, INT, BOOLEAN,
	// CHAR, VOID, VAR, STATIC, FIELD, LET, DO, IF, ELSE, 
	// WHILE, RETURN, TRUE, FALSE, NULL, THIS
	String keyWord() {
		return "";
	}
	
	// Return current SYMBOL token
	String symbol() {
		return "";
	}
	
	// Return current IDENTIFIER token
	String identifier() {
		return "";
	}
	
	// Return current INT_CONST value token
	String intVal() {
		return "";
	}
	
	// Return current STRING_CONST token
	String stringVal() {
		return "";
	}
}
