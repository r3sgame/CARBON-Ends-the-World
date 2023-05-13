extends HSlider

var grass1
var grass2
var cO2
var tempChange

var menuButton

# Called when the node enters the scene tree for the first time.
func _ready():
	grass2 = get_node("/root/Node3D/MeshInstance3D/Species 2")
	grass1 = get_node("/root/Node3D/MeshInstance3D/Species 1")
	cO2 = get_node("/root/Node3D/GrassUI/CO2")
	tempChange = get_node("/root/Node3D/GrassUI/Temp Change")
	menuButton = get_node("/root/Node3D/GrassUI/Button")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(menuButton.button_pressed):
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	if(value_changed):
		grass1.scale_h = value * 0.01 + 1
		grass2.optimization_level = 100/value
		cO2.text = "CO2: " + str(snapped(5.1278*pow(10, -28) * pow(value+1950, 9.04586) + 0.7, 0.1)) + " ppm"
		tempChange.text = "Temp. Increase: " + str(snapped(2.5997*pow(10, -13) * pow(value+1950, 4.07738) + 50.0817, 0.01)) + " degrees Celsius"
