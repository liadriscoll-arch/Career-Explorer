extends Sprite2D

func _ready() -> void:
	flip_h = true
	visible = false

func _process(delta: float) -> void:
	visible = Global.customer_line.size() >= 1
