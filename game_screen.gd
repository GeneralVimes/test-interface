extends Node2D

var menu = null
var game_time = 0

func _ready() -> void:
	$Label3.text = "Рівень: "+str(Globals.selected_level_id)

func _on_menu_button_button_down() -> void:
	if menu==null:
		menu = preload("res://game_menu_screen.tscn").instantiate()
		add_child(menu)


func _on_timer_timeout() -> void:
	game_time+=1
	$Label2.text = "Час гри: "+str(game_time)
	
func loose_game():
	get_tree().change_scene_to_file("res://defeat_screen.tscn")
	
func win_game():
	get_tree().change_scene_to_file("res://victory_screen.tscn")


func _on_button_win_button_down() -> void:
	win_game()
	pass # Replace with function body.


func _on_button_loose_button_down() -> void:
	loose_game()
	pass # Replace with function body.
