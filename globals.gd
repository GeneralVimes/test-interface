extends Node
var selected_level_id = 1

var all_levels=[
	"res://levels/Level1.tscn",
	"res://levels/Level2.tscn",
	"res://levels/Level3.tscn"
]

var level_times=[]

var level_clicks=[]

func _ready() -> void:
	for i in range(len(all_levels)):
		level_times.append(-1)
		level_clicks.append(-1)
	
func transit_to_scene(scn):
	var tm = preload("res://transition_manager.tscn").instantiate()
	tm.transit_to_scene(scn)
	get_tree().root.add_child(tm)
