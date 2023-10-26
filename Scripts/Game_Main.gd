extends Node2D

@onready var veggie = $Veggie
@onready var player = $Player
@onready var label = $ScoreLabel

var score: int = 0


func _ready():
	pass

func _process(_delta):
	pass


#Adds score to label
func _on_score_detect_area_entered(_area):
	var newscore = 1
	score += newscore
	label.text = str(score)
