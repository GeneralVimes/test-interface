extends ColorRect

var time_on_screen = 0
var max_time_on_screen = 0.3


func _process(delta: float) -> void:
	time_on_screen+=delta
	
	var coef = time_on_screen/max_time_on_screen
	if coef>1:
		coef=1
		
	self.color = Color(1,1,1,1-coef)
	
	if time_on_screen>max_time_on_screen:
		queue_free()
