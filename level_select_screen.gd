extends Node2D


func _on_button_back_button_down() -> void:
	get_tree().change_scene_to_file("res://start_screen.tscn")


func _on_button_button_down(n) -> void:
	Globals.selected_level_id=n
	get_tree().change_scene_to_file("res://game_screen.tscn")
