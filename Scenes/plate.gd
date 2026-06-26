extends Sprite2D

func _on_sinkarea_done() -> void:
	if Chefglobal.plate:
		visible = true
	if !Chefglobal.plate:
		visible = false
