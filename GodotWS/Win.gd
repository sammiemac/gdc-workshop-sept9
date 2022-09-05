extends Control


func _ready():
	pass


func _on_Button_mouse_entered():
	$UISelect.play()


func _on_Button_pressed():
	$UIBack.play()


func _on_UIBack_finished():
	get_tree().change_scene("res://TitleScreen.tscn")
