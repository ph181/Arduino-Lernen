extends Node2D

var wörterbuch = {"Wird zu Beginn ausgeführt":"void setup() { }" , "wird durchgehend ausgeführt": "void loop() {}", 
"wenn x höchstens 4 ist, führe das Programm cat aus, sonst das Progrmm dog":"if (x < 5) {cat} else {dog}", 
"for (int i = 0; i < 10; i++) {...}": "Durchlaufe alle Werte von 0 bis 9 in Einzelschritten", "=": "zuordnung", 
"ist gleich": "==", "!=": "ist nicht gleich", "++": "Inkrement", "Dekrement": "--", 
"pinMode(5,INPUT)": "Pin 5 ist Eingang", "Pin 6 ist Ausgang": "pinMode(6,OUTPUT)", "digitalWrite(11, HIGH)": "Pin 11 An", "Pin 12 aus": "digitalWrite(12, LOW)", 
"bool": "kann nur wahr oder falsch sein", "kann auch Buchstaben speichern": "char", "Ganzzahlige Werte": "int", "Kommazahlen": "float", "Arduino": "char str[]='Arduino'"} # Ihr Wörterbuch
var aktuellesWort = ""

func _ready():
	$SwitchD.scale = Vector2(5,5)
	aktuellesWort = wörterbuch.keys()[randi() % wörterbuch.size()] # Wählen Sie ein zufälliges Wort
	$Label.text = aktuellesWort



func _on_line_edit_text_submitted(text):
	überprüfen()


func _on_switch_d_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			überprüfen()


func überprüfen():
	var text = $LineEdit.text
	if wörterbuch[aktuellesWort] == text:
		$AusgabeLabel.text = "Richtig!"
	else:
		$AusgabeLabel.text = "Falsch! Richtig ist " + wörterbuch[aktuellesWort]
	$LineEdit.clear() # Löschen Sie das Textfeld
	aktuellesWort = wörterbuch.keys()[randi() % wörterbuch.size()] # Wählen Sie ein neues Wort
	$Label.text = aktuellesWort





func _on_switch_d_mouse_entered():
	$SwitchD.scale = Vector2(5.2,5.2)


func _on_switch_d_mouse_exited():
	$SwitchD.scale = Vector2(5,5)
