extends Node
var selected_level_id = 1

func transit_to_scene(scn):
	var tm = preload("res://transition_manager.tscn").instantiate()
	tm.transit_to_scene(scn)
	get_tree().root.add_child(tm)
