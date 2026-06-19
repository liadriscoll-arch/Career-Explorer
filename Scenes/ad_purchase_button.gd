extends TextureButton





func _on_pressed() -> void:
	if Global.coffee_money >= 25:
		Global.ads.append(3)
		Global.coffee_money -= 25
		
