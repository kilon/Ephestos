as yet unclassified
parse: aString
	"comment stating purpose of message"
|pyAtom result newString |
newString := (aString substrings:'<Vector>')at:1.
pyAtom := ((((PythonParser2 parse: (newString trimLeft) ) statements at: 1) stmts at: 1) tests at: 1) atom.
(pyAtom lparenToken isNotNil ) ifTrue: [^result := self extractCollection:  pyAtom].
