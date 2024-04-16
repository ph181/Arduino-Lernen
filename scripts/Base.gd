extends Node2D


var frame
var task0


func _ready():
	for i in range(3):
		frame = get_node("frame" + str(i))
		task0 = get_node("task" + str(i) )
		frame.gui_input.connect(_on_gui_input.bind(i))
		frame.mouse_entered.connect(_on_mouse_entered.bind(i))
		frame.mouse_exited.connect(_on_mouse_exited.bind(i))

func _on_gui_input(event,i):
	task0 = get_node("task" + str(i))
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			task0.visible = true

			

func _on_mouse_entered(i):
	frame = get_node("frame" + str(i))
	frame.scale = Vector2(2.2,2.2)

func _on_mouse_exited(i):
	frame = get_node("frame" + str(i))
	frame.scale = Vector2(2, 2)

func _on_widertry_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Widerstand.tscn")


