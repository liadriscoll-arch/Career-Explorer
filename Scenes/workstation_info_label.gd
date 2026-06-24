extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.coffee_day == 1:
		text = "To make coffee or espresso, click on the bean type" + "\r" + "then the machine. Espressos only use regular beans. Press the" + "\r" + "pot then cup to fill the cup with coffee/espresso" + "\r" + "For lattes, use espresso and add milk"
	elif Global.espresso_purchase_day + 1 == Global.coffee_day:
		text = "Lattes require milk and caffeinated espresso" + "\r" + "use your espresso machine and regular beans to make espresso" + "\r" + "add espresso and milk into the latte cups"
	else:
		text = ""
