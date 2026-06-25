extends Label


func _on_cabinetarea_invfull() -> void:
	set_text("Alerts:\n inventory full!")
	await get_tree().create_timer(1.0).timeout
	set_text("Alerts:\n")


func _on_trasharea_action() -> void:
	set_text("Alerts:\n inventory emptied!")
	await get_tree().create_timer(1.0).timeout
	set_text("Alerts:\n")


func _on_fridgearea_invfull() -> void:
	set_text("Alerts:\n inventory full!")
	await get_tree().create_timer(1.0).timeout
	set_text("Alerts:\n")
