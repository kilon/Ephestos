as yet unclassified
parseBlType: aString
	"comment stating purpose of message"
| blType |
blType := (((aString allRegexMatches: '<\w+' ) at:1 ) substrings: '<' ) at:1.
self allSubclassesDo: [ :class| (class name = ('EphBl',blType,'Type')) ifTrue: [^class new parse: aString] ]