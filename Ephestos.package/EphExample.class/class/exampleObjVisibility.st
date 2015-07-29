as yet unclassified
exampleObjVisibility
<example>

"Hide the Cube"

Ephestos sendMessage: 'bpy.data.objects["Cube"].hide = True'.

"Make the Cube visible again"

Ephestos sendMessage: 'bpy.data.objects["Cube"].hide = False'.

"same actions using pharo syntax"

EphPyParser bpy data objects:'["Cube"]'; hide:'=True'.
EphPyParser bpy data objects:'["Cube"]'; hide:'=False'.


