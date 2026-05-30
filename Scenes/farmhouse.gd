extends AnimatedSprite2D


func _on_body_entered(body):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scenes/farm_game.tscn")
