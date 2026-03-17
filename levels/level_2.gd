extends LevelWithSignals



func _on_button_2_button_down() -> void:
	emit_signal("victory")


func _on_button_button_down() -> void:
	emit_signal("defeat")
