extends Label


func _process(delta: float) -> void:
	set_text("")
	if Chefglobal.orders.size() > 3:
		for i  in range(3, Chefglobal.orders.size()):
			text += (Chefglobal.orders.get(i).name + "\n" + Chefglobal.orders.get(i).item1)
			if Chefglobal.orders.get(i).item2 != "":
				text += "\n\n" + Chefglobal.orders.get(i).item2
			if Chefglobal.orders.get(i).item3 != "":
				text += "\n\n" + Chefglobal.orders.get(i).item3
			text += "\n" + str(Chefglobal.orders.get(i).money) + " Dollars" + "\n\n"
	else:
		set_text("")
