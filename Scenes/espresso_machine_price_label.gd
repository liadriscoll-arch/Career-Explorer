extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	if !Global.latte_discovered:
		text = "100"
		add_theme_font_size_override("font_size", 40)
	else:
		text = "Purchased!"
		add_theme_font_size_override("font_size", 14)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
