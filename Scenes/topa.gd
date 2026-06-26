extends ColorRect


func _process(delta: float) -> void:
	if Chefglobal.asemburgtop1.size() > 0:
		visible = true
		if Chefglobal.asemburgtop1.get(0) == "Ketchup":
			set_color(Color(0.509, 0.0, 0.0, 1.0))
		elif Chefglobal.asemburgtop1.get(0) == "Mustard":
			set_color(Color(0.671, 0.671, 0.0, 1.0))
		elif Chefglobal.asemburgtop1.get(0) == "Pickles":
			set_color(Color(0.0, 0.32, 0.083, 1.0))
		elif Chefglobal.asemburgtop1.get(0) == "Lettuce":
			set_color(Color(0.0, 0.632, 0.251, 1.0))
		elif Chefglobal.asemburgtop1.get(0) == "Tomatoes":
			set_color(Color(0.693, 0.0, 0.073, 1.0))
		elif Chefglobal.asemburgtop1.get(0) == "Onions":
			set_color(Color(0.497, 0.0, 0.356, 1.0))
		elif Chefglobal.asemburgtop1.get(0) == "Cheese":
			set_color(Color(0.793, 0.697, 0.0, 1.0))
	else:
		visible = false
