extends Node2D

@onready var label = $ScoreLabel
var score: int = 0

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



#Adds score to label
func _on_score_detect_area_entered(area):
	var newscore = 1
	score += newscore
	label.text = str(score)

