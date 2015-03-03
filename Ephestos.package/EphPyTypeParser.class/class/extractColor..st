as yet unclassified
extractColor: pyPowerNode
|extractedCollection|
extractedCollection := OrderedCollection  new.
	(pyPowerNode trailers at:1) arguments do: [ :item|  
		extractedCollection add: item test2 atom numberToken value asNumber.  
		].
	
^ Color r: (extractedCollection at:1) g: (extractedCollection at:2) b: (extractedCollection at:3)