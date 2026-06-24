extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !Global.expresso_speed_purchased:
		text = "25"
		add_theme_font_size_override("font_size", 40)
	else:
		text = "purchased!"
		add_theme_font_size_override("font_size", 14)
	visible = Global.latte_discovered


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
