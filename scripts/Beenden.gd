extends Node2D



func _ready():
	$buttonBG/Buttontext.gui_input.connect(_on_buttontext_gui_input)
	$buttonBG/Buttontext.mouse_entered.connect(_on_mouse_entered)
	$buttonBG/Buttontext.mouse_exited.connect(_on_mouse_exited)
	
	
func _on_buttontext_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed: 
			get_tree().quit()


func _on_mouse_entered():
	$buttonBG.scale = Vector2(1.2,1.2)

func _on_mouse_exited():
	$buttonBG.scale = Vector2(1, 1)
