extends CanvasLayer
var phase_id = 0
var next_scene = ""

var time_passed=0
var time_max = 0.25

func transit_to_scene(scn):
	next_scene=scn
	phase_id=1
	$ColorRect.modulate.a = 0
	
func _process(delta: float) -> void:
	if phase_id!=0:
		time_passed+=delta
		var coef = time_passed/time_max
		if coef>1:
			coef=1
		if phase_id==1:
			$ColorRect.modulate.a = coef
			if coef==1:
				get_tree().change_scene_to_file(next_scene)
				phase_id=2
				time_passed=0
		else:
			$ColorRect.modulate.a = 1-coef		
			if coef==1:
				phase_id=0
				queue_free()
