as yet unclassified
name: aString
	"sets the name of the object"

name := aString .
Ephestos sendMessage: 'bpy.data.objects["', name ,'" ].name =  " ' ,aString,' " ' .
