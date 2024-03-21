extends Node2D

export var hiddenCorrect : bool = false


class_name SquareTask

func valdiateTask():
	if $task.get_child(0).get_child(1).pressed == hiddenCorrect:
		return true
	else:
		return false
		

func _on_Control_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.is_pressed():
				$task.get_child(0).get_child(1).pressed = !$task.get_child(0).get_child(1).pressed
