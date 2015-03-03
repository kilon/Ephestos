as yet unclassified
parse: aString
	"comment stating purpose of message"
|pyAtom result|
pyAtom := ((((PythonParser2 parse: aString) statements at: 1) stmts at: 1) tests at: 1) atom.
(pyAtom lbrackToken isNotNil ) ifTrue: [result := self pylistToArray: pyAtom].

^result
	