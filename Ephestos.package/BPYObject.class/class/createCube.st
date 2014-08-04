as yet unclassified
createCube
|bpyObjName|
Ephestos sendMessage: 'bpy.ops.mesh.primitive_cube_add()'.
self new.
bpyObjName := Ephestos sendMessage: 'bpy.context.active_object.name'.
self name: bpyObjName .