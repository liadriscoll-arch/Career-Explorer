extends Area2D

var player_inside := false
signal action
signal triggercolor
signal none

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if player_inside and Input.is_action_just_pressed("ui_accept"):
		open_menu()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Cheffella":
		player_inside = true
		triggercolor.emit()

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Cheffella":
		player_inside = false
		triggercolor.emit()

func open_menu() -> void:
	if Chefglobal.cashier_line.size() > 0:
		Chefglobal.cashier_line.remove_at(0)
		Chefglobal.ratings += Chefglobal.totalmoney[0]
		Chefglobal.totalmoney.remove_at(0)
		if Chefglobal.ratings >= 500:
			get_tree().change_scene_to_file("res://Scenes/chef_end.tscn")
		action.emit()
	else:
		none.emit()
