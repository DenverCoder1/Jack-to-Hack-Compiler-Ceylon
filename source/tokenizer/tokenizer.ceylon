// Jack Tokenizer
// Jonah Lawrence
// Daniel Klein

import files {
	readLines
}

shared class Tokenizer {
	
	shared new (String inputFile) {
		// Open .jack file for tokenization
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