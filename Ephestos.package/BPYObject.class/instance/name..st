as yet unclassified
name: aString
	"sets the name of the object"

Ephestos sendMessage: 'bpy.data.objects[ " ', name ,' " ].name =  " ' ,aString,' " ' .
name := aString . 