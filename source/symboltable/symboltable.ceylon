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
	void startSubroutine() {
		subroutineScope.clear();
	}
	
	// define a new identifier and assign running index
	void define(String name, String type, String kind) {
		if (kind in ["static", "field"]) {
			Integer count = varCount(kind);
			classScope.put(name, [type, kind, count]);
		}
		else if (kind in ["arg", "var"]) {
			Integer count = varCount(kind);
			subroutineScope.put(name, [type, kind, count]);
		}
		else {
			throw Exception("Kind is invalid");
		}
	}
	
	// returns the number of variables of the given kind
	// already defined in the current scope
	Integer varCount(String kind) {
		// function to check if hash element kind matches argument kind
		Boolean matchesKind(String->[String, String, Integer] element) {
			return element.item[1] == kind;
		}
		// count in class scope
		if (kind in ["static", "field"]) {
			return classScope.count(matchesKind);
		}
		// count in subroutine scope
		else if (kind in ["arg", "var"]) {
			return subroutineScope.count(matchesKind);
		}
		else {
			throw Exception("Kind is invalid");
		}
	}
	
	// returns the type of the named identifier
	String typeOf(String name) {
		value identifier = classScope[name] else subroutineScope[name] else ["none", null, null];
		return identifier[0];
	}
	
	// returns the kind of the named identifier
	String kindOf(String name) {
		value identifier = classScope[name] else subroutineScope[name] else [null, "none", null];
		return identifier[1];
	}
	
	// returns the index of the named identifier
	Integer indexOf(String name) {
		value identifier = classScope[name] else subroutineScope[name] else [null, null, 0];
		return identifier[2];
	}
}