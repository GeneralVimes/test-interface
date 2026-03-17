extends Area2D

var is_dragged = false
var is_falling = false
var y_floor = 0

func _ready() -> void:
	y_floor = position.y

func _process(delta: float) -> void:
	if is_falling:
		position.y+=450*delta
		if position.y>=y_floor:
			position.y=y_floor
			is_falling=false

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			is_dragged=true
			is_falling=false
			
func _input(event: InputEvent) -> void:
	if is_dragged:
		if event is InputEventMouseMotion:
			if event.position.y<y_floor:
				position.y=event.position.y
		if event is InputEventMouseButton:
			if event.pressed==false:
				is_dragged=false
				is_falling=true
