extends Node2D

func _ready() -> void:
	get_tree().paused = true

func _on_button_2_button_down() -> void:
	get_tree().paused = false
	Globals.transit_to_scene("res://start_screen.tscn")


func _on_button_button_down() -> void:
	get_tree().paused = false
	self.queue_free()
