extends Area2D

var player_inside := false
signal action
signal done
signal triggercolor

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
	if Chefglobal.canmove and !Chefglobal.plate:
		Chefglobal.canmove = false
		action.emit()
		await get_tree().create_timer(1.0).timeout
		Chefglobal.plate = true
		done.emit()
		Chefglobal.canmove = true
	elif Chefglobal.plate and Chefglobal.inventory == "":
		Chefglobal.plate = false
		Chefglobal.inventory = "Plate"
		done.emit()
