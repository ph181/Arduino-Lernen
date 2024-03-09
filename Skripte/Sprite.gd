extends Sprite2D

func _on_Tool_mouse_entered():
	get_tree().change_scene_to_file("res://Inventory.tscn")
	get_node("Inventory").add_item(get_name())
