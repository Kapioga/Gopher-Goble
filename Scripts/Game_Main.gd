extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	leavepan()

#Exits to splash screen
func leavepan():
	if Input.is_action_just_pressed("Exit"):
		get_tree().change_scene_to_file("res://Scenes/start_screen.tscn")
