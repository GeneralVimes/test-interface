extends LevelWithSignals

var is_car_moving = false

func _process(delta: float) -> void:
	if is_car_moving:
		$Level4Car.position.x+=70*delta

func _on_play_button_button_down() -> void:
	emit_signal("victory")

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			is_car_moving=true


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("area_enter",area)
	if area.name=="SignArea":
		$Level4Sign/PlayButton.visible=true
	else:
		is_car_moving=false
		emit_signal("defeat")
	
