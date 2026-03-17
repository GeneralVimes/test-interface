extends Node2D


func _on_button_button_down() -> void:
	Globals.transit_to_scene("res://start_screen.tscn")


func _on_button_2_button_down() -> void:
	OS.shell_open("https://eti.edu.ua/")
	pass # Replace with function body.
