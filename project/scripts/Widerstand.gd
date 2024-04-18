extends Node2D

var cones = []
var ctwos = []
var cthrees = []
var cfours = []

var dones = []
var dtwos = []
var dthrees = []
var dfours = []

@export var curr_color: Array = [0, 0, 0, 0]
@export var curr_digit: Array = [0, 0, 0, 0]

var colorup
var colordown
var digitup
var digitdown

@onready var colorSprite
@onready var digitSprite

func _ready():
	for i in range(10):
		cones.append(load("res://sprite/a3/col_" + str(i) + ".png"))
		ctwos.append(load("res://sprite/a3/col_" + str(i) + ".png"))
		cthrees.append(load("res://sprite/a3/col_" + str(i) + ".png"))
		dones.append(load("res://sprite/a3/" + str(i) + ".png"))
		dtwos.append(load("res://sprite/a3/" + str(i) + ".png"))
		dthrees.append(load("res://sprite/a3/mul_" + str(i) + ".png"))

	cfours.append(load("res://sprite/a3/tolcol0.png"))
	cfours.append(load("res://sprite/a3/tolcol1.png"))
	dfours.append(load("res://sprite/a3/tol0.png"))
	dfours.append(load("res://sprite/a3/tol1.png"))
	
	for k in range(4):
		colorSprite = get_node("colors/Sprite" + str(k))
	
	for j in range(4):
		digitSprite = get_node("digits/digit" + str(j))
		
	for i in range(4):
		colorup = get_node("c" + str(i) + "/up")
		colorup.gui_input.connect(_on_up_gui_input.bind(i))
		colordown = get_node("c" + str(i) + "/down")
		colordown.gui_input.connect(_on_down_gui_input.bind(i))		
		colorup.mouse_entered.connect(_on_colorup_mouse_entered.bind(i))
		colorup.mouse_exited.connect(_on_colorup_mouse_exited.bind(i))
		colordown.mouse_entered.connect(_on_colordown_mouse_entered.bind(i))
		colordown.mouse_exited.connect(_on_colordown_mouse_exited.bind(i))
	for l in range(4):
		digitup = get_node("d" + str(l) + "/up")
		digitup.gui_input.connect(_on_up_gui_input.bind(l))
		digitdown = get_node("d" + str(l) + "/down")
		digitdown.gui_input.connect(_on_down_gui_input.bind(l))		
		digitup.mouse_entered.connect(_on_digitup_mouse_entered.bind(l))
		digitup.mouse_exited.connect(_on_digitup_mouse_exited.bind(l))
		digitdown.mouse_entered.connect(_on_digitdown_mouse_entered.bind(l))
		digitdown.mouse_exited.connect(_on_digitdown_mouse_exited.bind(l))

func _on_up_gui_input(event,i):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			colorup = get_node("c" + str(i) + "/up")
			curr_color[i] = (curr_color[i] + 1) % 10
			if i == 0:
				get_node("colors/Sprite" + str(i)).texture = cones[curr_color[i]]
			elif i == 1:
				get_node("colors/Sprite" + str(i)).texture = ctwos[curr_color[i]]
			elif i == 2:
				get_node("colors/Sprite" + str(i)).texture = cthrees[curr_color[i]]
			elif i == 3:
				if curr_color[i] >= cfours.size():
					curr_color[i] = cfours.size() - 1
				get_node("colors/Sprite" + str(i)).texture = cfours[curr_color[i]]
			digitup = get_node("d" + str(i) + "/up")
			curr_digit[i] = (curr_digit[i] + 1) % 10
			if i == 0:
				get_node("digits/digit" + str(i)).texture = dones[curr_digit[i]]
			elif i == 1:
				get_node("digits/digit" + str(i)).texture = dtwos[curr_digit[i]]
			elif i == 2:
				get_node("digits/digit" + str(i)).texture = dthrees[curr_digit[i]]
			elif i == 3:
				if curr_digit[i] >= dfours.size():
					curr_digit[i] = dfours.size() - 1
				get_node("digits/digit" + str(i)).texture = dfours[curr_digit[i]]


func _on_down_gui_input(event,i):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			colorup = get_node("c" + str(i) + "/up")
			curr_color[i] = (curr_color[i] - 1+10) % 10
			if i == 0:
				get_node("colors/Sprite" + str(i)).texture = cones[curr_color[i]]
			elif i == 1:
				get_node("colors/Sprite" + str(i)).texture = ctwos[curr_color[i]]
			elif i == 2:
				get_node("colors/Sprite" + str(i)).texture = cthrees[curr_color[i]]
			elif i == 3:
				if curr_color[i] >= cfours.size():
					curr_color[i] = cfours.size() - 1
				get_node("colors/Sprite" + str(i)).texture = cfours[curr_color[i]]
			digitup = get_node("d" + str(i) + "/up")
			curr_digit[i] = (curr_digit[i] - 1+10) % 10
			if i == 0:
				get_node("digits/digit" + str(i)).texture = dones[curr_digit[i]]
			elif i == 1:
				get_node("digits/digit" + str(i)).texture = dtwos[curr_digit[i]]
			elif i == 2:
				get_node("digits/digit" + str(i)).texture = dthrees[curr_digit[i]]
			elif i == 3:
				if curr_digit[i] >= dfours.size():
					curr_digit[i] = dfours.size() - 1
				get_node("digits/digit" + str(i)).texture = dfours[curr_digit[i]]
				

func _on_colorup_mouse_entered(i):
	colorup = get_node("c" + str(i) + "/up")
	colorup.scale = Vector2(1.1,1.1)

func _on_colorup_mouse_exited(i):
	colorup = get_node("c" + str(i) + "/up")
	colorup.scale = Vector2(1,1)

func _on_colordown_mouse_entered(i):
	colordown = get_node("c" + str(i) + "/down")
	colordown.scale = Vector2(1.1,1.1)

func _on_colordown_mouse_exited(i):
	colordown = get_node("c" + str(i) + "/down")
	colordown.scale = Vector2(1,1)

func _on_digitup_mouse_entered(l):
	digitup = get_node("d" + str(l) + "/up")
	digitup.scale = Vector2(1.1,1.1)

func _on_digitup_mouse_exited(l):
	digitup = get_node("d" + str(l) + "/up")
	digitup.scale = Vector2(1,1)

func _on_digitdown_mouse_entered(l):
	digitdown = get_node("d" + str(l) + "/down")
	digitdown.scale = Vector2(1.1,1.1)

func _on_digitdown_mouse_exited(l):
	digitdown = get_node("d" + str(l) + "/down")
	digitdown.scale = Vector2(1,1)
