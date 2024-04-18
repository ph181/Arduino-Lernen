extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_buttonlabel_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
#			get_parent().get_parent().get_node("task").visible = false
			get_parent().visible = false


func _on_buttonlabel_mouse_entered():
	get_node("ButtonSprite").scale = Vector2(1.1,1.1)


func _on_buttonlabel_mouse_exited():
	get_node("ButtonSprite").scale = Vector2(1.0,1.0)
