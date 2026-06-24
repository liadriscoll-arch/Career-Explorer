extends TextureButton


@onready var purchase_fx = preload("res://Assets/sfx music/cha-ching.mp3")
@onready var espresso_machine_price_label: Label = $"../espresso_machine_price_label"
@onready var expresso_speed_upgrade: Label = $"../expresso_speed_upgrade"
@onready var expresso_speed_image: Sprite2D = $"../expresso_speed_image"
@onready var expresso_speed_purchase_button: TextureButton = $"../expresso_speed_purchase_button"


func _on_pressed() -> void:
	if Global.coffee_money >= 100:
		CoffeeShopMusic.play_sfx(purchase_fx)
		Global.espresso_purchase_day = Global.coffee_day
		Global.latte_discovered = true
		Global.coffee_money -= 100
		espresso_machine_price_label.add_theme_font_size_override("font_size", 14)
		espresso_machine_price_label.text = "Purchased!"
		expresso_speed_upgrade.show()
		expresso_speed_image.show()
		expresso_speed_purchase_button.show()
		
	
