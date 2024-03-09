extends Node2D

func _ready():
	pass


func _on_wissen_gui_input(event):
	#Input.set_default_cursor_shape(2)
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene_to_file("res://Szenen/Technikraum.tscn") # 


func _on_praktisch_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene_to_file("res://Szenen/Rocket_Horse_Building.tscn")# 

func _on_quiz_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene_to_file("res://Szenen/Quiz.tscn") # 
