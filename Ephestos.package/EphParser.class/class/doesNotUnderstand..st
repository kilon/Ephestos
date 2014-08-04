as yet unclassified
doesNotUnderstand: aMessage
|messageRegex dictindexRegex 
valueRegex fullRegex parts message
methodcallRegex accessObjectRegex pythonString|

pythonString := ''.
message := aMessage asString.

messageRegex :='\w+\:'.
accessObjectRegex := 'nil'.
dictindexRegex := $' asString ,'\s*\[\s*"*\s*\w+\s*"*\s*\]\s*', $' asString.
valueRegex := '',$' asString ,'\s*=.+', $' asString,''.
methodcallRegex := '',$' asString ,'\s*\(.*\)\s*', $' asString,''.

fullRegex := '((',messageRegex,')|(',dictindexRegex,')|(',valueRegex,')|(',methodcallRegex,')|(',accessObjectRegex,'))'.

parts := message allRegexMatches: fullRegex.

parts do:[:part||index|
	
	index := parts indexOf: part.
	"self halt."
	(index < parts size) ifTrue: [  
	(part matchesRegex: messageRegex) ifTrue:[ ((parts at: (index + 1)) matchesRegex: accessObjectRegex ) ifTrue: [|newpart| 
			newpart := part copyWithRegex: '\:' matchesReplacedWith:'.' . pythonString := pythonString ,newpart  ]].
	
	(part matchesRegex: messageRegex) ifTrue:[ ((parts at: (index + 1)) matchesRegex: dictindexRegex  ) ifTrue: [|newpart dictIndexString| 
			dictIndexString := (parts at: (index + 1)).
			dictIndexString := dictIndexString copyWithRegex: (($' asString),'+')  matchesReplacedWith:''. 
			newpart := part copyWithRegex: '\:' matchesReplacedWith:('' ,dictIndexString,'.' ) . 
			"parts at: index put: newpart" .  pythonString := pythonString ,newpart]].
	
	(part matchesRegex: messageRegex) ifTrue:[ ((parts at: (index + 1)) matchesRegex: valueRegex  ) ifTrue: [|newpart valueString| 
			valueString := (parts at: (index + 1)).
			valueString := valueString copyWithRegex: (($' asString),'+')  matchesReplacedWith:''. 
			newpart := part copyWithRegex: '\:' matchesReplacedWith:('' ,valueString ) . 
			"parts at: index put: newpart ".  pythonString := pythonString ,newpart.]].
	
	(part matchesRegex: messageRegex) ifTrue:[ ((parts at: (index + 1)) matchesRegex: methodcallRegex ) ifTrue: [|newpart methodcallString| 
			methodcallString := (parts at: (index + 1)).
			methodcallString := methodcallString  copyWithRegex: (($' asString),'+')  matchesReplacedWith:''. 
			newpart := part copyWithRegex: '\:' matchesReplacedWith:('' ,methodcallString ) . 
			"parts at: index put: newpart ".  pythonString := pythonString ,newpart.]].
	

	]].


"parts inspect. 
pythonString inspect."
Ephestos sendMessage: pythonString .

Transcript show: 'The message sent: ',aMessage asString ;cr.
	
badMessage :=  aMessage.

^ badMessage 
	