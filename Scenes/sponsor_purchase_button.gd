extends TextureButton





func _on_pressed() -> void:
	if Global.coffee_money >= 100:
		Global.coffee_money -= 100
		Global.ads.append(7)
		Global.sponsors.append(1)
