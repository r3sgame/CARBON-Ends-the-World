extends Control

var greenhouseButton
var vegetationButton
var seaLevelButton

# Called when the node enters the scene tree for the first time.
func _ready():
	greenhouseButton = get_node("/root/Node3D/GrassUI/Button")
	vegetationButton = get_node("/root/Node3D/GrassUI/Button2")
	seaLevelButton = get_node("/root/Node3D/GrassUI/Button3")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(greenhouseButton.button_pressed):
		get_tree().change_scene_to_file("res://Scenes/env3.tscn")
	if(vegetationButton.button_pressed):
		get_tree().change_scene_to_file("res://Scenes/env1.tscn")
	if(seaLevelButton.button_pressed):
		get_tree().change_scene_to_file("res://Scenes/env2.tscn")
		
