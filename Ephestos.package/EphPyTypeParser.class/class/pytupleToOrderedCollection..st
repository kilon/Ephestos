as yet unclassified
pytupleToOrderedCollection: pyAtom
|convertedArray|
convertedArray := OrderedCollection  new.
	(pyAtom list at:1) do: [ :item|  convertedArray add: (item atom  numberToken value)asNumber  ].
	
^ convertedArray 