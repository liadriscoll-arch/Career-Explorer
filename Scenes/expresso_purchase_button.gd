extends TextureButton





func _on_pressed() -> void:
	Global.ads.append(3)
	Global.coffee_money -= 25
