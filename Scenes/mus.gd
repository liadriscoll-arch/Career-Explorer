extends Sprite2D


func _process(delta: float) -> void:
	if "Mushrooms" in Chefglobal.asempiztop1:
		visible = true
	else:
		visible = false
