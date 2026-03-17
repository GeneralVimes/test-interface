extends LevelWithSignals
func _correct_answer_click(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			emit_signal("victory")
