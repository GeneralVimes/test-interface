extends Node2D

func _ready() -> void:
	print(Globals.level_times)
	print(Globals.level_clicks)
	$LabelResults.text = "Ви витратили "+\
		str(Globals.level_times[Globals.selected_level_id-1])+\
		" секунд та зробили "+\
		str(Globals.level_clicks[Globals.selected_level_id-1])+\
		" кліків"
	if Globals.selected_level_id<len(Globals.all_levels):
		$ButtonNext.visible=true
	else:
		$ButtonNext.visible=false

func _on_button_button_down() -> void:
	Globals.transit_to_scene("res://level_select_screen.tscn")


func _on_button_replay_button_down() -> void:
	Globals.transit_to_scene("res://game_screen.tscn")
	pass # Replace with function body.


func _on_button_next_button_down() -> void:
	Globals.selected_level_id+=1
	Globals.transit_to_scene("res://game_screen.tscn")
	pass # Replace with function body.
