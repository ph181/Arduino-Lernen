extends Node2D


func _ready():
	pass


func _on_Buttontext_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_1.tscn")

func _on_Buttontext2_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_2.tscn")

func _on_Buttontext3_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_3.tscn")

func _on_Buttontext4_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_4.tscn")

func _on_Buttontext5_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_5.tscn")

func _on_Buttontext6_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_6.tscn")

func _on_Buttontext7_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_7.tscn")

func _on_Buttontext8_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_8.tscn")

func _on_Buttontext9_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_9.tscn")

func _on_Buttontext10_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_10.tscn")

func _on_Buttontext11_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_11.tscn")

func _on_Buttontext12_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_12.tscn")

func _on_Buttontext13_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_13.tscn")

func _on_Buttontext14_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_14.tscn")

func _on_Buttontext15_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_15.tscn")

func _on_Buttontext16_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_16.tscn")

func _on_Buttontext17_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_17.tscn")

func _on_ButtontextP_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_18.tscn")

func _on_Buttontext_mouse_entered():
	$Aufgabe1/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext_mouse_exited():
	$Aufgabe1/buttonBG.scale = Vector2(1,1)

func _on_Buttontext2_mouse_entered():
	$Aufgabe2/buttonBG.scale = Vector2(1.1,1.1)
	
func _on_Buttontext2_mouse_exited():
	$Aufgabe2/buttonBG.scale = Vector2(1,1)

func _on_Buttontext3_mouse_entered():
	$Aufgabe3/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext3_mouse_exited():
	$Aufgabe3/buttonBG.scale = Vector2(1,1)

func _on_Buttontext4_mouse_entered():
	$Aufgabe4/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext4_mouse_exited():
	$Aufgabe4/buttonBG.scale = Vector2(1,1)

func _on_Buttontext5_mouse_entered():
	$Aufgabe5/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext5_mouse_exited():
	$Aufgabe5/buttonBG.scale = Vector2(1,1)

func _on_Buttontext6_mouse_entered():
	$Aufgabe6/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext6_mouse_exited():
	$Aufgabe6/buttonBG.scale = Vector2(1,1)

func _on_Buttontext7_mouse_entered():
	$Aufgabe7/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext7_mouse_exited():
	$Aufgabe7/buttonBG.scale = Vector2(1,1)

func _on_Buttontext8_mouse_entered():
	$Aufgabe8/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext8_mouse_exited():
	$Aufgabe8/buttonBG.scale = Vector2(1,1)

func _on_Buttontext9_mouse_entered():
	$Aufgabe9/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext9_mouse_exited():
	$Aufgabe9/buttonBG.scale = Vector2(1,1)

func _on_Buttontext10_mouse_entered():
	$Aufgabe10/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext10_mouse_exited():
	$Aufgabe10/buttonBG.scale = Vector2(1,1)

func _on_Buttontext11_mouse_entered():
	$Aufgabe11/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext11_mouse_exited():
	$Aufgabe11/buttonBG.scale = Vector2(1,1)

func _on_Buttontext12_mouse_entered():
	$Aufgabe12/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext12_mouse_exited():
	$Aufgabe12/buttonBG.scale = Vector2(1,1)

func _on_Buttontext13_mouse_entered():
	$Aufgabe13/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext13_mouse_exited():
	$Aufgabe13/buttonBG.scale = Vector2(1,1)

func _on_Buttontext14_mouse_entered():
	$Aufgabe14/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext14_mouse_exited():
	$Aufgabe14/buttonBG.scale = Vector2(1,1)

func _on_Buttontext15_mouse_entered():
	$Aufgabe15/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext15_mouse_exited():
	$Aufgabe15/buttonBG.scale = Vector2(1,1)

func _on_Buttontext16_mouse_entered():
	$Aufgabe16/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext16_mouse_exited():
	$Aufgabe16/buttonBG.scale = Vector2(1,1)

func _on_Buttontext17_mouse_entered():
	$Aufgabe17/buttonBG.scale = Vector2(1.1,1.1)

func _on_Buttontext17_mouse_exited():
	$Aufgabe17/buttonBG.scale = Vector2(1,1)
	
func _on_ButtontextP_mouse_entered():
	$AufgabeBtn/buttonBG.scale = Vector2(1.1,1.1)

func _on_ButtontextP_mouse_exited():
	$AufgabeBtn/buttonBG.scale = Vector2(1,1)
