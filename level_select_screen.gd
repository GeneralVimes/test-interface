extends Node2D


func _on_button_back_button_down() -> void:
	Globals.transit_to_scene("res://start_screen.tscn")


func _on_button_button_down(n) -> void:
	Globals.selected_level_id=n
	Globals.transit_to_scene("res://game_screen.tscn")
