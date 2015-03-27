as yet unclassified
exMatColor
<example>	
"Change the color of the cube. The name Material is nomrally assigned to the default Cube if you change it then that change should reflect in your code string as well. Diffuse color here represents the main color of the material, while Specular is the color appearing around areas the intensity of the light becomes stronger. We pass just the usual RGB vector, each argument seperated by comma for Red , Green and Blue"

Ephestos sendMessage: 'bpy.data.materials["Material"].diffuse_color = (1.0 , 0.0 , 0.0)'.

"same action using pharo syntax"

EphPyParser bpy data materials:'["Material"]'; diffuse_color:'=(1.0 , 0.0 , 0.0)';e.