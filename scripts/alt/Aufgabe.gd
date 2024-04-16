extends Node2D

var completed = false
export var hiddenComplete : bool = false
var clickedValidate = 0



func _on_prufbutton_clicked(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			if !completed:
				var done = true
				clickedValidate += 1
				if clickedValidate ==1:
					for t in $tasks.get_children():
						if !t.valdiateTask():
							done = false
				if done:
					completed = true

