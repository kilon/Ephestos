as yet unclassified
testVector
	"comment stating purpose of message"

	| pytypeVector |
	pytypeVector  := EphPyTypeParser parse:'<Vector (1.0,1.0,1.0)>'.
	
	self assert: (pytypeVector printString = 'an OrderedCollection(1.0 1.0 1.0)' ).