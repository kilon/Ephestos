as yet unclassified
testColor
	"comment stating purpose of message"

	| pytypeColor |
	pytypeColor := EphPyTypeParser parse:'<Color(r=1.0,g=1.0,b=1.0)>'.
	
	self assert: (pytypeColor = Color white).