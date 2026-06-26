extends Sprite2D


func _process(delta: float) -> void:
	if "Pepperoni" in Chefglobal.asempiztop2:
		visible = true
	else:
		visible = false
