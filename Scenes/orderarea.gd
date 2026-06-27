extends Area2D

var player_inside := false
var neworder: order
signal action
signal triggercolor
signal tomany
signal noone

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
	if Chefglobal.customer_line.size() > 0 and Chefglobal.orders.size() < 6:
		Chefglobal.customer_line.remove_at(0)
		neworder = order.new()
		Chefglobal.orders.append(neworder)
		action.emit()
	elif Chefglobal.orders.size() == 6:
		tomany.emit()
	else:
		noone.emit()
