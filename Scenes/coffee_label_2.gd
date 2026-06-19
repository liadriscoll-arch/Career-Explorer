extends Sprite2D


func _ready():
	visible = Global.espresso_purchase_day != null and Global.coffee_day > Global.espresso_purchase_day
