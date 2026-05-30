extends Node2D


var brightness = 100
var volume = 50

func _on_brightness_slider_changed(value):
	Global.brightness = value
	$Brightness_slider_label.text = brightness + "%"

func _on_volume_slider_changed(value):
	Global.volume = value
	$Volume_slider_label.text =  volume + "%"
