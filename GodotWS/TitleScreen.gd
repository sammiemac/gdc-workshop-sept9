extends Control


func _ready():
	pass


func _on_Button_pressed():
	$Button/UIEnter.play()


func _on_Button_mouse_entered():
	$Button/UISelect.play()


func _on_UIEnter_finished():
	get_tree().change_scene("res://Level1.tscn")
