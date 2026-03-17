extends Node2D

func _on_button_2_button_down() -> void:
	Globals.transit_to_scene("res://credits_screen.tscn")


func _on_button_button_down() -> void:
	Globals.transit_to_scene("res://level_select_screen.tscn")
