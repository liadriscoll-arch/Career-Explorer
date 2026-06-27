extends AnimatedSprite2D

var heldpizza = ""

func _on_ovenarea_firstinteract() -> void:
	if visible == false and Chefglobal.inventory.contains(" Dough"):
		heldpizza = Chefglobal.inventory
		Chefglobal.inventory = ""
		visible = true
		set_frame(0)
		await get_tree().create_timer(30.0).timeout
		if visible == true:
			set_frame(1)
			await get_tree().create_timer(20.0).timeout
			if visible == true:
				set_frame(2)
	elif visible == true and Chefglobal.inventory == "":
		if get_frame() == 0:
			visible = false
			Chefglobal.inventory = heldpizza
			heldpizza = ""
		if get_frame() == 1:
			visible = false
			Chefglobal.inventory = "Cooked " + heldpizza
			heldpizza = ""
		if get_frame() == 2:
			visible = false
			Chefglobal.inventory = "Overcooked " + heldpizza
			heldpizza = ""
