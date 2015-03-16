as yet unclassified
extractCollection: pyAtom
|extractedCollection pn |
extractedCollection := OrderedCollection  new.
	(pyAtom list at:1) do: [ :item|  
		(item isKindOf:PyFactorNode ) ifTrue: [   extractedCollection add: ((item factor atom numberToken value) * -1 ) ] ifFalse: [ pn := item atom.
		(pn isKindOf: PyAtomNode ) ifTrue: [ extractedCollection  add:(self extractCollection: item atom)].
		(pn isKindOf: PyNumberNode ) ifTrue: [ extractedCollection  add: (item atom  numberToken value)asNumber  ].
		(pn isKindOf: PyStringsNode ) ifTrue: [ extractedCollection  add: ((((item atom  strings at:1) value) substrings:'"' ) at:1)]]
		].
	
^ extractedCollection 