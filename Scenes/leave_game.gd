extends Button


func _ready():
	visible = Global.previous_scene_path != ("res://Scenes/main_game.tscn") and Global.previous_scene_path != ("res://Scenes/start.tscn") and Global.previous_scene_path != ("res://Scenes/settings.tscn") and Global.previous_scene_path != ("")


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_game.tscn")
