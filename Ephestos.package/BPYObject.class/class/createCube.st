as yet unclassified
createCube
|obj bpyObjName|

Ephestos sendMessage: 'bpy.ops.mesh.primitive_cube_add()'.
obj := self new.

bpyObjName := Ephestos getValue: 'bpy.context.active_object.name'.
obj  name: bpyObjName .

^ obj 