extends Node2D

func _ready() -> void:
	get_tree().paused = true

func _on_button_2_button_down() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://start_screen.tscn")


func _on_button_button_down() -> void:
	get_tree().paused = false
	self.queue_free()
