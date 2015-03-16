as yet unclassified
extractCollection: pyAtom
|extractedCollection|
extractedCollection := OrderedCollection  new.
	(pyAtom list at:1) do: [ :item|  
		(item atom isKindOf: PyAtomNode ) ifTrue: [ extractedCollection  add:(self extractCollection: item atom)].
		(item atom isKindOf: PyNumberNode ) ifTrue: [ extractedCollection  add: (item atom  numberToken value)asNumber  ].
		(item atom isKindOf: PyStringsNode ) ifTrue: [ extractedCollection  add: ((((item atom  strings at:1) value) substrings:'"' ) at:1)]
		].
	
^ extractedCollection 