extends Sprite2D


func _process(delta: float) -> void:
	if "Bell Peppers" in Chefglobal.asempiztop4:
		visible = true
	else:
		visible = false
