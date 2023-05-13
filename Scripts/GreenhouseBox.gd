extends CheckBox

var cO2Layer
var freeParticles

var menuButton

# Called when the node enters the scene tree for the first time.
func _ready():
	cO2Layer = get_node("/root/Node3D/CO2Layer")
	freeParticles = get_node("/root/Node3D/GPUParticles3D")
	menuButton = get_node("/root/Node3D/GrassUI/Button")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(menuButton.button_pressed):
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	if(button_pressed):
		cO2Layer.show()
		freeParticles.hide()
	else:
		cO2Layer.hide()
		freeParticles.show()
		
