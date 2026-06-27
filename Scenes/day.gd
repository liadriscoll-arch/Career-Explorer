extends Label

func _ready() -> void:
	if Chefglobal.mode == 0:
			visible = false
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Day:\n" + str(Chefglobal.day)
	if Input.is_action_just_pressed("tutorialopen"):
		if visible == true:
			visible = false
		else:
			visible = true
