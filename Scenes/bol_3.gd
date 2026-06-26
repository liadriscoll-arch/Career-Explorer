extends Sprite2D


func _process(delta: float) -> void:
	if "Black Olives" in Chefglobal.asempiztop3:
		visible = true
	else:
		visible = false
