as yet unclassified
pytupleToOrderedCollection: pyAtom
|convertedArray|
convertedArray := OrderedCollection  new.
	(pyAtom list at:1) do: [ :item|  
		(item atom isKindOf: PyAtomNode ) ifTrue: [ convertedArray add:(self pylistToOrderedCollection: item atom)].
		(item atom isKindOf: PyNumberNode ) ifTrue: [ convertedArray add: (item atom  numberToken value)asNumber  ]
		].
	
^ convertedArray 