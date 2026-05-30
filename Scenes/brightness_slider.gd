extends HSlider

var brightness = 100

func _on_brightness_slider_value_changed(value: float) -> void:
	Global.brightness = value
	$Brightness_slider_label.text =  brightness + "%"
