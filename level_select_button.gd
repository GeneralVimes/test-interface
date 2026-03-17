extends Button

var my_level=0

func init_view(lvl):
	my_level=lvl
	self.text = str(my_level)
	if Globals.level_clicks[my_level-1]!=-1:
		$LabelClicks.text = "Clicks: "+str(Globals.level_clicks[my_level-1]) 
	else:
		$LabelClicks.text = ""
		
	if Globals.level_times[my_level-1]!=-1:
		$LabelTime.text = "Time: "+str(Globals.level_times[my_level-1]) 
	else:
		$LabelTime.text = ""		


func _on_button_down() -> void:
	Globals.selected_level_id = my_level
	Globals.transit_to_scene("res://game_screen.tscn")
	pass # Replace with function body.
