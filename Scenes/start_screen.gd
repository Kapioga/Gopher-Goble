extends Control

#Variables
@onready var animation_player = $Buttons/PlayButton/AnimationPlayer


#PLAY Button
func _on_play_button_mouse_entered():
	animation_player.play("MenuWiggle")
func _on_play_button_mouse_exited():
	animation_player.stop()
func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Game_Main.tscn")

#QUIT Button
func _on_quit_button_mouse_exited():
	animation_player.stop()
func _on_quit_button_pressed():
	get_tree().quit()
func _on_quit_button_mouse_entered():
	animation_player.play("QuitButWiggle")
