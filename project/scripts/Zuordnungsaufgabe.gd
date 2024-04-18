extends Node2D

var held_object = null
var mouse_speed = Vector2.ZERO

var loesungen = []
var antworten = []

func _input(event):
	if event is InputEventMouseMotion:
		mouse_speed = event.velocity
		
func _ready():
	for node in get_tree().get_nodes_in_group("pickable"):
		node.clicked.connect(_on_pickable_clicked)
	for i in range(5): 
		var loesung = get_node("Loesungen/Loesung" + str(i))
		var antwort = get_node("Antworten/Antworten" + str(i))
		loesungen.append(loesung)
		antworten.append(antwort)
		loesung.body_entered.connect(_on_Loesung_body_entered.bind(loesung, antwort))
		loesung.body_exited.connect(_on_Loesung_body_exited.bind(loesung, antwort))


func _on_pickable_clicked(object):
	if !held_object:
		held_object = object
		held_object.pickup()


func _process(_delta):
	if held_object:
		held_object.position = get_global_mouse_position()


func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == 1:
		if held_object and !event.pressed:
			held_object.drop(mouse_speed)
			held_object = null

func _on_Loesung_body_entered(body, loesung, antwort):
	if body == antwort:
		loesung.get_node("corr").visible = true
	else:
		loesung.get_node("wrong").visible = true 

func _on_Loesung_body_exited(body, loesung, antwort):
	if body == antwort:
		loesung.get_node("corr").visible = false
	else:
		loesung.get_node("wrong").visible = false 


