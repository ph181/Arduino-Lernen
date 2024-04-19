extends TextureRect
var rect
var animation
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(4):
		rect = get_node(str(i) + "/TextureRect")
		rect.gui_input.connect(_on_gui_input_event.bind(i))
#		rect.mouse_exited.connect(_on_texture_rect_mouse_exited.bind(i))


func _on_gui_input_event(event, i):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			animation = get_node(str(i))
			if animation.is_playing():
				animation.stop()
			else:
				animation.play()

