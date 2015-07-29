as yet unclassified
exampleObjColor
<example>
	"Set Object Cube color. Make sure that there is an object named Cube in Blender or else this wont work"

Ephestos sendMessage: 'bpy.data.objects["Cube"].color = (0.0,0.0,0.0,1.0) '.

"same action using pharo syntax"

EphPyParser  bpy data objects:'["Cube"]';color:'=(0.0,0.0,0.0,1.0) '.

