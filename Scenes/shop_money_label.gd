extends Label



func _ready() -> void:
	text = str(Global.coffee_money)



func _process(delta: float) -> void:
	text = str(Global.coffee_money)
