extends Node2D

func _ready():
	for i in range(len(Globals.all_levels)):
		var b = preload("res://level_select_button.tscn").instantiate()
		add_child(b) 
		b.init_view(i+1)
		
		var col_id = i%11
		var row_id = floor(i/11)
		
		b.position.x = 50+100*col_id
		b.position.y = 150+150*row_id

func _on_button_back_button_down() -> void:
	Globals.transit_to_scene("res://start_screen.tscn")


func _on_button_button_down(n) -> void:
	Globals.selected_level_id=n
	Globals.transit_to_scene("res://game_screen.tscn")
