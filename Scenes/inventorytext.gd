extends Label

func _process(delta: float) -> void:
	set_text("In inventory:\n" + Chefglobal.inventory)
