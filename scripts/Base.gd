extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Frame/Try.visible = false
	#$Frame/Exer.visible = false
	#$Frame/Info.visible = false
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


