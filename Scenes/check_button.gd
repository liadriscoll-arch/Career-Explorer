extends CheckButton

func _ready():
	button_pressed = Chefglobal.endless

func _on_toggled(toggled_on: bool) -> void:
	if toggled_on:
		Chefglobal.endless = true
	else:
		Chefglobal.endless = false
	print(Chefglobal.endless)
