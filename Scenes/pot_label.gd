extends Label


func _ready():
	visible = Global.espresso_purchase_day != null and Global.coffee_day > Global.espresso_purchase_day
