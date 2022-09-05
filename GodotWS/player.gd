extends KinematicBody2D


# Declare member variables here.
export var speed = 70	# User defined speed (pixels per second, default to 1 "space")
var velocity = Vector2(0, 0)	# 2D Vector that keeps track of x, y movement, default to 0 vector


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if velocity == Vector2(0, 0):	# Lock player input if already in motion
		if Input.is_action_pressed("up"):
			velocity = Vector2(0, -speed)	# When an input is made, set velocity to speed in that direction
		if Input.is_action_pressed("down"):
			velocity = Vector2(0, speed)
		if Input.is_action_pressed("left"):
			velocity = Vector2(-speed, 0)
		if Input.is_action_pressed("right"):
			velocity = Vector2(speed, 0)
	
	velocity = move_and_slide(velocity, Vector2.UP)		# Handles player movement
