as yet unclassified
exCycleMatColor
"Lets cicle through all colors of Diffuse color of the material"

|matColorRed matColorGreen matColorBlue |

matColorRed := 0.0.
matColorGreen := 0.0 .
matColorBlue := 0.0 .


(1 to: 10) do: [ :indexRed |
	matColorRed := ((indexRed asFloat ) / 10) asString .
	(1 to: 10) do: [:indexGreen |
		matColorGreen := ( (indexGreen asFloat ) /10) asString .
		(1 to: 10) do: [ :indexBlue|
			matColorBlue := ( (indexBlue asFloat) / 10) asString .
			Ephestos sendMessage: 'bpy.data.materials["Material"].diffuse_color = (' , matColorRed , ',' , matColorGreen , ',' ,matColorBlue , ')'.
			(Delay forMilliseconds: 10) wait]
	]].


