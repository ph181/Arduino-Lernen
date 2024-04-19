extends Node2D

var wörterbuch = {"Hund": "Dog", "Katze": "Cat", "Haus": "House"} # Ihr Wörterbuch
var aktuellesWort = ""

func _ready():
	aktuellesWort = wörterbuch.keys()[randi() % wörterbuch.size()] # Wählen Sie ein zufälliges Wort
	$Label.text = aktuellesWort

func _on_LineEdit_text_entered(text):
	if wörterbuch[aktuellesWort] == text:
		print("Richtig!")
	else:
		print("Falsch! Die richtige Übersetzung von ", aktuellesWort, " ist ", wörterbuch[aktuellesWort])
	$LineEdit.clear() # Löschen Sie das Textfeld
	aktuellesWort = wörterbuch.keys()[randi() % wörterbuch.size()] # Wählen Sie ein neues Wort
	$Label.text = aktuellesWort


func _on_line_edit_text_submitted(new_text):
	pass # Replace with function body.
