extends Node2D


var aufgabe
var scene
var button
var label

func _ready():
	for i in range(18):
		aufgabe = get_node("Aufgabe" + str(i) + "/buttonBG/Buttontext")
		aufgabe.gui_input.connect(_on_Buttontext_gui_input.bind(i))
		label = get_node("Aufgabe" + str(i) + "/buttonBG/Buttontext")
		label.mouse_entered.connect(_on_mouse_entered.bind(i))
		label.mouse_exited.connect(_on_mouse_exited.bind(i))

func _on_Buttontext_gui_input(event,i):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			aufgabe = get_node("Aufgabe" + str(i) + "/buttonBG/Buttontext")
			scene = get_tree().change_scene_to_file("res://scenes/A" + str(i) + ".tscn")


func _on_mouse_entered(i):
	button = get_node("Aufgabe" + str(i) + "/buttonBG")
	button.scale = Vector2(1.2,1.2)


func _on_mouse_exited(i):
	button = get_node("Aufgabe" + str(i) + "/buttonBG")
	button.scale = Vector2(1, 1)

	



