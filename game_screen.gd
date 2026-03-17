extends Node2D

var menu = null
var game_time = 0

func _ready() -> void:
	$Label3.text = "Рівень: "+str(Globals.selected_level_id)
	var current_level_scene:LevelWithSignals = null
	if Globals.selected_level_id==1:
		current_level_scene = preload("res://levels/Level1.tscn").instantiate()
	if Globals.selected_level_id==2:
		current_level_scene = preload("res://levels/Level2.tscn").instantiate()	
	if Globals.selected_level_id==3:
		current_level_scene = preload("res://levels/Level3.tscn").instantiate()	
		
	if current_level_scene!=null:
		add_child(current_level_scene)
		current_level_scene.defeat.connect(loose_game)
		current_level_scene.victory.connect(win_game)


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
	Globals.transit_to_scene("res://victory_screen.tscn")


func _on_button_win_button_down() -> void:
	win_game()
	pass # Replace with function body.


func _on_button_loose_button_down() -> void:
	loose_game()
	pass # Replace with function body.
