extends Node2D

func _ready() -> void:
	Global.customer_line.clear()
	Global.coffee_day += 1
	for i in range(Global.ads.size()):
		Global.ads[i] -= 1

	Global.ads = Global.ads.filter(func(days): return days > 0)
