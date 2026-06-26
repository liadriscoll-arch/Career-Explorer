extends AnimatedSprite2D

var heldpatty = ""

func _on_pansarea_secondinteract() -> void:
	if visible == false and (Chefglobal.inventory == "Meat Patty" or Chefglobal.inventory == "Veggie Patty"):
		heldpatty = Chefglobal.inventory
		Chefglobal.inventory = ""
		visible = true
		set_frame(0)
		await get_tree().create_timer(10.0).timeout
		if visible == true:
			set_frame(1)
			await get_tree().create_timer(10.0).timeout
			if visible == true:
				set_frame(2)
	elif visible == true and Chefglobal.inventory == "":
		if get_frame() == 0:
			visible = false
			Chefglobal.inventory = heldpatty
			heldpatty = ""
		if get_frame() == 1:
			visible = false
			Chefglobal.inventory = "Cooked " + heldpatty
			heldpatty = ""
		if get_frame() == 2:
			visible = false
			Chefglobal.inventory = "Overcooked " + heldpatty
			heldpatty = ""
