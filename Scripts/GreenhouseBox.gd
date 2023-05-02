extends CheckBox

var cO2Layer
var freeParticles

# Called when the node enters the scene tree for the first time.
func _ready():
	cO2Layer = get_node("/root/Node3D/CO2Layer")
	freeParticles = get_node("/root/Node3D/GPUParticles3D")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(button_pressed):
		cO2Layer.show()
		freeParticles.hide()
	else:
		cO2Layer.hide()
		freeParticles.show()
		
