as yet unclassified
e
|stringToSend|
	"comment stating purpose of message"
	Transcript show: 'pythonString : ',pythonStringClass ;cr.
	Transcript show: '-------------END OF MESSAGE-------------';cr.
	stringToSend := pythonStringClass .
	self pythonStringClass:''.
	Ephestos sendMessage: stringToSend .


