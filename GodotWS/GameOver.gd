extends Control


func _ready():
	pass


func _on_button_mouse_entered():
	$UISelect.play()


func _on_exit_pressed():
	$UIBack.play()


func _on_restart_pressed():
	$UIEnter.play()


func _on_UIBack_finished():
	get_tree().change_scene("res://TitleScreen.tscn")


func _on_UIEnter_finished():
	get_tree().change_scene("res://Level1.tscn")
