extends Node2D

var menu = null
var game_time = 0
var num_clicks = 0

func _ready() -> void:
	$Label3.text = "Рівень: "+str(Globals.selected_level_id)
	var current_level_scene:LevelWithSignals = null
	
	current_level_scene=load(Globals.all_levels[Globals.selected_level_id-1]).instantiate()

	if current_level_scene!=null:
		add_child(current_level_scene)
		current_level_scene.defeat.connect(loose_game)
		current_level_scene.victory.connect(win_game)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			num_clicks+=1
			$LabelClicks.text = "Кліків: "+str(num_clicks)

func _on_menu_button_button_down() -> void:
	if menu==null:
		menu = preload("res://game_menu_screen.tscn").instantiate()
		add_child(menu)


func _on_timer_timeout() -> void:
	game_time+=1
	$Label2.text = "Час гри: "+str(game_time)
	
func loose_game():
	Globals.transit_to_scene("res://defeat_screen.tscn")
	
func win_game():
	Globals.level_times[Globals.selected_level_id-1]=game_time
	Globals.level_clicks[Globals.selected_level_id-1] = num_clicks
	
	Globals.transit_to_scene("res://victory_screen.tscn")


func _on_button_win_button_down() -> void:
	win_game()
	pass # Replace with function body.


func _on_button_loose_button_down() -> void:
	loose_game()
	pass # Replace with function body.
