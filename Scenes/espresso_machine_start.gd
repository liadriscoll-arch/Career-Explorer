extends TextureButton

@onready var machine_animation = $"../espresso_machine/AnimatedSprite2D"
@onready var regular_espresso_pot: regular_espresso_pot = $"../regular_espresso_pot"
@onready var workstation_info_label: Label = $"../workstation_info_label"


func _on_pressed() -> void:
	if !Global.latte_discovered:
		return
	if Global.beans_used == "decaf":
		workstation_info_label.text = str("decaf beans may not be used in espresso machine")
		await get_tree().create_timer(2.5).timeout
		workstation_info_label.text = str("To make coffee or espresso, click on the bean type" + "\r" + "then the machine. Espressos only use regular beans. Press the" + "\r" + "pot then cup to fill the cup with coffee/espresso" + "\r" + "For lattes, use espresso and add milk")
		return
	else:
		if Global.regular_coffee_pot > 0:
			return
	disabled = true
	
	
	regular_espresso_pot.visible = false
	Global.regular_coffee_beans -= 1
	
	machine_animation.sprite_frames.set_animation_loop("espresso_fill", false)
	machine_animation.play("espresso_fill")
	await machine_animation.animation_finished
	
	
	Global.regular_espresso_pot = 4
	regular_espresso_pot.update_espresso_pot()
	regular_espresso_pot.visible = true
	
	disabled = false
