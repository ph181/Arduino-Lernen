extends Node2D


func _ready():
	pass


func _on_NPC_L_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$NPC_L.play()
			$ColorRect.visible = true
			$AnimationPlayer.play("Dialog")


func _on_NPC_L_mouse_entered():
	Input.set_default_cursor_shape(2)


func _on_NPC_L_mouse_exited():
	Input.set_default_cursor_shape(0)


func _on_Label2_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$ColorRect.visible=false

			
func _on_Schaukel_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene_to_file("res://Szenen/Rocket_Horse_Building.tscn")# 


func _on_Quiz_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene_to_file("res://Szenen/Quiz.tscn") # 


func _on_Schrnke_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene_to_file("res://Szenen/Technikraum.tscn") # 
