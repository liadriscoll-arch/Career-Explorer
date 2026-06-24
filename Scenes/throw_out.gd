extends TextureButton

var empty_coffee = preload("res://Assets/Coffee assets/empty_coffee.webp")
var empty_latte = preload("res://Assets/Coffee assets/empty_latte.webp")
@onready var fella_latte_empty: Sprite2D = $"../fella_latte_empty"
@onready var fella_coffee_empty: Sprite2D = $"../fella_coffee_empty"


func _on_pressed() -> void:
	var cup_to_clear := Global.selected_cup

	if cup_to_clear == "none":
		if Global.drink_made == "coffee" or Global.coffee_cup_made != "none":
			cup_to_clear = "coffee"
		elif Global.drink_made != "none" or Global.latte_cup_made != "none":
			cup_to_clear = "latte"

	if cup_to_clear == "none":
		return

	if cup_to_clear == "coffee":
		fella_coffee_empty.texture = empty_coffee
		Global.coffee_cup_made = "none"
		Global.coffee_cup_type_made = "none"
	elif cup_to_clear == "latte":
		fella_latte_empty.texture = empty_latte
		Global.latte_cup_made = "none"
		Global.latte_cup_type_made = "regular"

	Global.drink_selected = "none"
	Global.drink_made = "none"
	Global.type_made = "none"
	Global.selected_cup = "none"
