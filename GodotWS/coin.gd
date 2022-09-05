extends Area2D


signal collected	# User-created signal that will be emitted when a coin is collected


func _on_coin_body_entered(body):	 # Callecnd the player body enters the Area2D
	emit_signal("collected")	 # Emit user-created signal called "collected"
	$AnimationPlayer.play("collect")	 # Play "collect" animation in AnimationPlayer
	$Collect.play() 	# Play the "Collect" AudioStreamPlayer
	set_collision_mask_bit(0, false)
	$Timer.start()


func _on_Timer_timeout():
	queue_free()
