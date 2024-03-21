extends Node2D

var held_object = null


func _ready():
	for node in get_tree().get_nodes_in_group("pickable"):
		node.connect("clicked", self, "_on_pickable_clicked")
#	$aufgabe/Label.connect("clicker", self, "_on_Label_gui_input")
	
func _on_pickable_clicked(object):
	if !held_object:
		held_object = object
		held_object.pickup()
#

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if held_object and !event.pressed:
			held_object.drop(Input.get_last_mouse_speed())
			held_object = null
		
#
#func _on_Label_gui_input(event):
#	if event is InputEventMouseButton:
#		if event.is_pressed() and event.button_index == 1:
#			_on_Loesung_body_entered(body).resume()
##			_on_Loesung_body_exited(body).resume()



func _on_Loesung1_body_entered(body):
##	yield(get_node("Antworten2/Label"), "gui_input")
#	for i in range(1,2):
		if 	body.name == "Antworten1":
			$Arduino/Loesung1/corr.visible = true
		else:
			$Arduino/Loesung1/wrong.visible = true 

func _on_Loesung2_body_entered(body):
		if 	body.name == "Antworten2":
			$Arduino/Loesung2/corr.visible = true
		else:
			$Arduino/Loesung2/wrong.visible = true 

func _on_Loesung3_body_entered(body):
		if 	body.name == "Antworten3":
			$Arduino/Loesung3/corr.visible = true
		else:
			$Arduino/Loesung3/wrong.visible = true 

func _on_Loesung4_body_entered(body):
		if 	body.name == "Antworten4":
			$Arduino/Loesung4/corr.visible = true
		else:
			$Arduino/Loesung4/wrong.visible = true 

func _on_Loesung5_body_entered(body):
		if 	body.name == "Antworten5":
			$Arduino/Loesung5/corr.visible = true
		else:
			$Arduino/Loesung5/wrong.visible = true 

func _on_Loesung1_body_exited(body):
		if 	body.name == "Antworten1":
			$Arduino/Loesung1/corr.visible = false
		else:
			$Arduino/Loesung1/wrong.visible = false 

func _on_Loesung2_body_exited(body):
		if 	body.name == "Antworten2":
			$Arduino/Loesung2/corr.visible = false
		else:
			$Arduino/Loesung2/wrong.visible = false 

func _on_Loesung3_body_exited(body):
		if 	body.name == "Antworten3":
			$Arduino/Loesung3/corr.visible = false
		else:
			$Arduino/Loesung3/wrong.visible = false 
			
func _on_Loesung4_body_exited(body):
		if 	body.name == "Antworten4":
			$Arduino/Loesung4/corr.visible = false
		else:
			$Arduino/Loesung4/wrong.visible = false 
			
func _on_Loesung5_body_exited(body):
		if 	body.name == "Antworten5":
			$Arduino/Loesung5/corr.visible = false
		else:
			$Arduino/Loesung5/wrong.visible = false 


func _on_Buttonlabel_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_5.tscn")


func _on_Buttonlabel_mouse_entered():
	$ButtonClose2/ButtonSprite.scale = Vector2(1.1,1.1)
	


func _on_Buttonlabel_mouse_exited():
	$ButtonClose2/ButtonSprite.scale = Vector2(1,1)
