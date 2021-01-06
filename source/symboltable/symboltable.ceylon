// Symbol Table
// Jonah Lawrence
// Daniel Klein

import ceylon.collection {
	HashMap
}

shared class SymbolTable {
	
	// name -> [type, kind, count]
	variable HashMap<String,[String, String, Integer]> classScope;
	variable HashMap<String,[String, String, Integer]> subroutineScope;

	// create new symbol table
	shared new() {
		classScope = HashMap<String,[String, String, Integer]> {};
		subroutineScope = HashMap<String,[String, String, Integer]> {};
	}
	
	// reset subroutine scope
	shared void startSubroutine() {
		subroutineScope.clear();
	}
	
	// define a new identifier and assign running index
	shared void define(String name, String type, String kind) {
		if (kind in ["static", "field"]) {
			// field => this
			String kindIn = if (kind=="field") then "this" else kind;
			Integer count = varCount(kindIn);
			classScope.put(name, [type, kindIn, count]);
		}
		else if (kind in ["argument", "local"]) {
			Integer count = varCount(kind);
			subroutineScope.put(name, [type, kind, count]);
		}
		else {
			throw Exception("Kind ``kind`` is invalid in define");
		}
	}
	
	// returns the number of variables of the given kind
	// already defined in the current scope
	shared Integer varCount(String kind) {
		// function to check if hash element kind matches argument kind
		Boolean matchesKind(String->[String, String, Integer] element) {
			return element.item[1] == kind;
		}
		// count in class scope
		if (kind in ["static", "this"]) {
			return classScope.count(matchesKind);
		}
		// count in subroutine scope
		else if (kind in ["argument", "local"]) {
			return subroutineScope.count(matchesKind);
		}
		else {
			throw Exception("Kind ``kind`` is invalid in varCount");
		}
	}
	
	// returns the type of the named identifier or "none"
	shared String typeOf(String name) {
		value identifier = classScope[name] else subroutineScope[name] else ["none", null, null];
		return identifier[0];
	}
	
	// returns the kind of the named identifier
	shared String kindOf(String name) {
		value identifier = classScope[name] else subroutineScope[name] else [null, "none", null];
		if (identifier[1] == "none") {
			throw Exception("kind is unknown");
		}
		return identifier[1];
	}
	
	// returns the index of the named identifier
	shared Integer indexOf(String name) {
		value identifier = classScope[name] else subroutineScope[name] else [null, null, -1];
		if (identifier[2] == -1) {
			throw Exception("index is unknown");
		}
		return identifier[2];
	}
}