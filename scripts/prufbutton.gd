extends Sprite


signal clicked

	
func _on_label_gui_input(event):
	emit_signal("clicked",event)
	if event is InputEventMouseButton:
		if event.button_index == 1:
			scale = Vector2(1,1)



func _on_label_mouse_entered():
	scale = Vector2(1.1,1.1)



func _on_label_mouse_exited():
	scale = Vector2(1,1)

