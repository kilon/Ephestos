as yet unclassified
parse: aString
	"comment stating purpose of message"
|pyAtom result|
(aString at:1) = $< ifTrue: [ ^ self parseBlType: aString ].
pyAtom := ((((PythonParser2 parse: aString) statements at: 1) stmts at: 1) tests at: 1) atom.
(pyAtom lbrackToken isNotNil ) ifTrue: [^result := self extractCollection:  pyAtom].
(pyAtom lparenToken isNotNil ) ifTrue: [^result := self extractCollection:  pyAtom].
(pyAtom isKindOf:PySymbolNode ) ifTrue: [ ^result := self extractColor: pyAtom parent  ].


	