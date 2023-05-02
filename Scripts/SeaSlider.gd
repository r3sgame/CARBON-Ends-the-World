extends HSlider

var grass
var water
var cO2
var tempChange

# Called when the node enters the scene tree for the first time.
func _ready():
	water = get_node("/root/Node3D/Water")
	grass = get_node("/root/Node3D/MeshInstance3D/SimpleGrassTextured")
	cO2 = get_node("/root/Node3D/GrassUI/CO2")
	tempChange = get_node("/root/Node3D/GrassUI/Temp Change")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(value_changed):
		grass.scale_h = value * 0.01 + 1
		water.position = Vector3(water.position.x, (value/50) + 7.5, water.position.z)
		cO2.text = "CO2: " + str(snapped(5.1278*pow(10, -28) * pow(value+1950, 9.04586) + 0.7, 0.1)) + " ppm"
		tempChange.text = "Sea level change: " + str(snapped(3.5927*pow(10, -11) * pow(value+1950, 4.08264) - 977.489 + 5.98, 0.01)) + " mm"
