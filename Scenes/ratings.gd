extends Label

func _ready() -> void:
	if Chefglobal.mode == 0:
			visible = false
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Ratings:\n" + str(Chefglobal.ratings/100.0).left(3)
	if Input.is_action_just_pressed("tutorialopen"):
		if visible == true:
			visible = false
		else:
			visible = true
