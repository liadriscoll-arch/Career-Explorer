extends AnimatedSprite2D

var heldnood = ""

func _on_potsarea_firstinteract() -> void:
	if visible == false and (Chefglobal.inventory == "Short Noodles" or Chefglobal.inventory == "Long Noodles"):
		heldnood = Chefglobal.inventory
		Chefglobal.inventory = ""
		visible = true
		set_frame(0)
		await get_tree().create_timer(20.0).timeout
		if visible == true:
			set_frame(1)
			await get_tree().create_timer(20.0).timeout
			if visible == true:
				set_frame(2)
	elif visible == true and Chefglobal.inventory == "":
		if get_frame() == 0:
			visible = false
			Chefglobal.inventory = heldnood
			heldnood = ""
		if get_frame() == 1:
			visible = false
			Chefglobal.inventory = "Cooked " + heldnood
			heldnood = ""
		if get_frame() == 2:
			visible = false
			Chefglobal.inventory = "Overcooked " + heldnood
			heldnood = ""
