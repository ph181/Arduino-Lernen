extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Buttonlabel_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			visible = false




func _on_Buttonhelp_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$Help1.visible = true

func _on_Buttonhelp_mouse_entered():
	$ButtonHelp1/ButtonSprite.scale = Vector2(1.1,1.1)

	
func _on_Buttonhelp_mouse_exited():
	$ButtonHelp1/ButtonSprite.scale = Vector2(1,1)


func _on_Buttonhelpclose_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$Help1.visible = false
func _on_Buttonhelpclose_mouse_entered():
	$Help1/ButtonClose/ButtonSprite.scale = Vector2(1.1,1.1)


func _on_Buttonhelpclose_mouse_exited():
	$Help1/ButtonClose/ButtonSprite.scale =  Vector2(1,1)


func _on_next_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$Aufgabe/zwei.visible = true


func _on_next_mouse_entered():
	$Aufgabe/Buttonnext/ButtonSprite.scale = Vector2(1.1,1.1)


func _on_next_mouse_exited():
	$Aufgabe/Buttonnext/ButtonSprite.scale =  Vector2(1,1)


func _on_next2_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$Aufgabe/zwei/drei.visible = true




func _on_next2_mouse_entered():
	$Aufgabe/zwei/Buttonnext2/ButtonSprite.scale = Vector2(1.1,1.1)


func _on_next2_mouse_exited():
	$Aufgabe/zwei/Buttonnext2/ButtonSprite.scale = Vector2(1.1,1.1)
