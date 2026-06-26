extends Sprite2D


func _process(delta: float) -> void:
	if "Pineapple" in Chefglobal.asempiztop4:
		visible = true
	else:
		visible = false
