extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Loesung_body_entered(body):
	yield()
	for i in range(1,2):
		if 	body.name == "Antworten"+str(i) and get_parent().get_node("Antworten"+str(i)).name  == "Antworten"+str(i) :
			$Loesung/corr.visible = true
		else:
			$Loesung/wrong.visible = true 


func _on_Loesung_body_exited(body):
	yield()
	for i in range(1,2):
		if 	body.name == "Antworten"+str(i) and get_parent().get_node("Antworten"+str(i)).name  == "Antworten"+str(i) :
			$Loesung/corr.visible = false
		else:
			$Loesung/wrong.visible = false 
