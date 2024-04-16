extends CharacterBody2D

var dragging = false

signal dragsignal

func _ready():
	self.dragsignal.connect(_set_drag_pc)
	
	
func _process(_delta):
	if dragging:
		var mousepos = get_global_mouse_position()
		self.global_position  = Vector2(mousepos.x, mousepos.y)
		
		
		
func _set_drag_pc():
	dragging=!dragging
		
func _on_Antworten_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == 1 and !event.pressed:
			emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()




