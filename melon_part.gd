extends TextureButton

var is_dragged = false

func _input(event: InputEvent) -> void:
	if is_dragged:
		if event is InputEventMouseMotion:
			self.position.x = event.position.x-60
			self.position.y = event.position.y-40

func _on_button_down() -> void:
	is_dragged=true
	self.z_index=5


func _on_button_up() -> void:
	is_dragged=false
	self.z_index=0
