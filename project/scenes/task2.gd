extends TextureRect
var rect
var animation
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(4):
		rect = get_node(str(i) + "/TextureRect")
		rect.mouse_entered.connect(_on_texture_rect_mouse_entered.bind(i))
		rect.mouse_exited.connect(_on_texture_rect_mouse_exited.bind(i))


func _on_texture_rect_mouse_entered(i):
	animation = get_node(str(i))
	animation.play()


func _on_texture_rect_mouse_exited(i):
	animation = get_node(str(i))
	animation.stop()
