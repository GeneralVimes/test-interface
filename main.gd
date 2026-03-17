extends Node2D

var x = 0

func _on_button_button_down() -> void:
	print("click")
	
	if $CheckButton.button_pressed:
		$Button.position.x+=10
	else:
		$Button.position.x-=10


func _on_button_2_button_down() -> void:
	$Button3.visible = not $Button3.visible


func _on_button_3_button_down() -> void:
	$Button.disabled= not $Button.disabled


func _on_button_4_button_down() -> void:
	$ColorRect.color = Color(
		randf_range(0,1),
		randf_range(0,1),
		randf_range(0,1),1)


func _on_button_5_button_down() -> void:
	var n = randi_range(1,6)
	print(n)
	$Button5.text = str(n)


func _on_button_6_button_down() -> void:
	x+=1
	$Label.text = str(x)
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	print("TICK")
	$Button6.position.x = randi_range(0,1000)
	$Button6.position.y = randi_range(0,800)
