extends Control

func _ready():
	leavepan()

#Exits to splash screen
func leavepan():
	if Input.is_action_just_pressed("Space"):
		#get_tree().change_scene_to_file("res://Scenes/start_screen.tscn")
		print("Leaving")

