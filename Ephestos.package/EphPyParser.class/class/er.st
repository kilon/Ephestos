as yet unclassified
er
|stringToSend|
	"comment stating purpose of message"
	Transcript show: 'pythonString : ',pythonStringClass ;cr.
	Transcript show: '-------------END OF MESSAGE-------------';cr.
	stringToSend := pythonStringClass .
	self pythonStringClass:''.
	^ Ephestos getValue: stringToSend .


