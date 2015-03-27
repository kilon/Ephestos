as yet unclassified
exObjLocation
<example>

"change Cube's location to x = 0.0 , y = 0.0 , z= 0.0"

Ephestos sendMessage: 'bpy.data.objects["Cube"].location = (0.0 , 0.0, 0.0)'.

"same action but using pharo syntax instead"

EphPyParser bpy data objects: '["Cube"]';location:'= (0.0, 0.0, 0.0)';e.


