extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


		
func korrekt():
	pass
	get_parent().get_parent().get_node("Bild2/Deckel/CollisionPolygon2D").set_deferred("disabled", false)
	#grüner Rahmen

