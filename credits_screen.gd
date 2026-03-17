extends Node2D


func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://start_screen.tscn")
	pass # Replace with function body.


func _on_button_2_button_down() -> void:
	OS.shell_open("https://eti.edu.ua/")
	pass # Replace with function body.
