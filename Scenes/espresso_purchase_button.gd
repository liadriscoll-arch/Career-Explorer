extends TextureButton





func _on_pressed() -> void:
	if Global.coffee_money >= 100:
		Global.espresso_purchase_day = Global.coffee_day
		Global.latte_discovered = true
		Global.coffee_money -= 100
	
