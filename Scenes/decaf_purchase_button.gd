extends TextureButton





func _on_pressed():
	if Global.coffee_money >= 5:
		Global.decaf_coffee_beans += 1
		Global.coffee_money -= 5
	
