extends Sprite2D


func _process(delta: float) -> void:
	if "Sausage" in Chefglobal.asempiztop4:
		visible = true
	else:
		visible = false
