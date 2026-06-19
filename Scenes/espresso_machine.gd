extends Node2D


func _ready():
	if Global.espresso_purchase_day != null and Global.coffee_day >= Global.espresso_purchase_day + 1:
		visible = true
	else:
		visible = false
