as yet unclassified
parse: aString
	"comment stating purpose of message"
|pyAtom result newString|
newString := (aString substrings:'<>')at:1.

pyAtom := ((((PythonParser2 parse: newString) statements at: 1) stmts at: 1) tests at: 1) atom.

(pyAtom isKindOf:PySymbolNode ) ifTrue: [ result := self extractColor: pyAtom parent  ].

^result