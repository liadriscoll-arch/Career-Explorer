extends HSlider

var brightness = 100

func _ready():
	value = Global.brightness
	_on_brightness_slider_value_changed(value)

func _on_brightness_slider_value_changed(value: float) -> void:
	Global.brightness = value
	Global.apply_brightness()
	$Brightness_slider_label.text = str(int(Global.get_brightness_level(value) * 100.0)) + "%"
