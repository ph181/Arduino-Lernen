extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_try_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$Frame/Try.visible = true
			

func _on_exer_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
				$Frame2/Exer.visible = true
			
			


func _on_info_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$Frame3/Info.visible = true
			

func _on_try_mouse_entered():
	$Frame/try.scale  = Vector2(1.1,1.1)


func _on_try_mouse_exited():
	$Frame/try.scale = Vector2(1,1)


func _on_info_mouse_entered():
	$Frame3/info.scale = Vector2(1.1,1.1)


func _on_info_mouse_exited():
	$Frame3/info.scale = Vector2(1,1)


func _on_exer_mouse_entered():
	$Frame2/exer.scale = Vector2(1.1,1.1)


func _on_exer_mouse_exited():
	$Frame2/exer.scale = Vector2(1,1)


func _on_widertry_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Widerstand.tscn")






func _on_TextureRect2_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_parent().play()


func _on_TextureRect3_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_parent().play()


func _on_TextureRect4_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_parent().play()


func _on_TextureRect_mouse_entered():
	get_node("Frame3/Info/Aufgabe/1").play()


func _on_TextureRect_mouse_exited():
	get_node("Frame3/Info/Aufgabe/1").stop()


func _on_TextureRect2_mouse_entered():
	get_node("Frame3/Info/Aufgabe/2").play()


func _on_TextureRect2_mouse_exited():
	get_node("Frame3/Info/Aufgabe/2").stop()


func _on_TextureRect3_mouse_entered():
	get_node("Frame3/Info/Aufgabe/3").play()


func _on_TextureRect3_mouse_exited():
	get_node("Frame3/Info/Aufgabe/3").stop()


func _on_TextureRect4_mouse_entered():
	get_node("Frame3/Info/Aufgabe/4").play()


func _on_TextureRect4_mouse_exited():
	get_node("Frame3/Info/Aufgabe/4").stop()
