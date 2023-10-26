extends Node2D

@onready var veggie = $Veggie
@onready var player = $Player
@onready var label = $ScoreLabel

var score: int = 0


func _ready():
	leavepan()

func _process(delta):
	pass


#Exits to splash screen
func leavepan():
	if Input.is_action_just_pressed("Exit"):
		get_tree().change_scene_to_file("res://Scenes/start_screen.tscn")

#Adds score to label
func _on_score_detect_area_entered(area):
	var newscore = 1
	score += newscore
	label.text = str(score)
