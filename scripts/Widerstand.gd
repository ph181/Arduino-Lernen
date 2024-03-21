extends Node2D

onready var oneSprite = $colors/one
onready var twoSprite = $colors/two
onready var threeSprite = $colors/three
onready var fourSprite = $colors/four
#onready var rand = RandomNumberGenerator.new()

onready var oneDigit = $digits/oneD
onready var twoDigit = $digits/twoD
onready var threeDigit = $digits/threeD
onready var fourDigit = $digits/fourD


const Widerstandcolors = preload("res://scripts/Widerstandcolors.gd")
const Widerstandsdigits = preload("res://scripts/Widerstandsdigits.gd")

export var curr_one: int = 0
export var curr_two: int = 0
export var curr_three: int = 0
export var curr_four: int = 0

export var curr_1: int = 0
export var curr_2: int = 0
export var curr_3: int = 0
export var curr_4: int = 0



func ready():
	oneSprite.texture = Widerstandcolors.ones[curr_one]
	twoSprite.texture = Widerstandcolors.twos[curr_two]
	threeSprite.texture = Widerstandcolors.threes[curr_three]
	fourSprite.texture = Widerstandcolors.fours[curr_four]
	
	oneDigit.texture = Widerstandsdigits.ones[curr_1]
	twoDigit.texture = Widerstandsdigits.twos[curr_2]
	threeDigit.texture = Widerstandsdigits.threes[curr_3]
	fourDigit.texture = Widerstandsdigits.fours[curr_4]
	
	
func resistor():
	pass


func _on_up_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			for _i in range (Widerstandcolors.ones.size()-1,0,-1):
				curr_one = (curr_one + 1) % Widerstandcolors.ones.size()
				oneSprite.texture = Widerstandcolors.ones[curr_one]
			for _i in range (Widerstandsdigits.ones.size()-1,0,-1):
				curr_1 = (curr_1 + 1) % Widerstandsdigits.ones.size()
				oneDigit.texture = Widerstandsdigits.ones[curr_1]
				
func _on_do_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			curr_one = (curr_one + 1) % Widerstandcolors.ones.size()
			oneSprite.texture = Widerstandcolors.ones[curr_one]
			curr_1 = (curr_1 + 1) % Widerstandsdigits.ones.size()
			oneDigit.texture = Widerstandsdigits.ones[curr_1]
			
func _on_do_mouse_entered():
	$one/dowS.scale = Vector2(1.1,1.1) # Replace with function body.
func _on_do_mouse_exited():
	$one/dowS.scale = Vector2(1,1) # Replace with function body.
func _on_up_mouse_entered():
	$one/upS.scale = Vector2(1.1,1.1) # Replace with function body.
func _on_up_mouse_exited():
	$one/upS.scale = Vector2(1,1) # Replace with function body.
	
func _on_up2_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			curr_two = (curr_two + 1) % Widerstandcolors.twos.size()
			twoSprite.texture = Widerstandcolors.twos[curr_two]
			curr_2 = (curr_2 + 1) % Widerstandsdigits.twos.size()
			twoDigit.texture = Widerstandsdigits.twos[curr_2]
			
			
func _on_do2_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			for _i in range (Widerstandcolors.twos.size()-1,0,-1):
				curr_two = (curr_two + 1) % Widerstandcolors.twos.size()
				twoSprite.texture = Widerstandcolors.twos[curr_two]
			for _i in range (Widerstandsdigits.twos.size()-1,0,-1):
				curr_2 = (curr_2 + 1) % Widerstandsdigits.twos.size()
				twoDigit.texture = Widerstandsdigits.twos[curr_2]
			
func _on_up2_mouse_entered():
	$two/upS.scale = Vector2(1.1,1.1)
func _on_up2_mouse_exited():
	$two/upS.scale = Vector2(1,1)
func _on_do2_mouse_entered():
	$two/dowS.scale = Vector2(1.1,1.1)
func _on_do2_mouse_exited():
	$two/dowS.scale = Vector2(1,1)

func _on_up3_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			curr_three = (curr_three + 1) % Widerstandcolors.threes.size()
			threeSprite.texture = Widerstandcolors.threes[curr_three]
			curr_3 = (curr_3 + 1) % Widerstandsdigits.threes.size()
			threeDigit.texture = Widerstandsdigits.threes[curr_3]
				
func _on_do3_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			for _i in range (Widerstandcolors.threes.size()-1,0,-1):
				curr_three = (curr_three + 1) % Widerstandcolors.threes.size()
				threeSprite.texture = Widerstandcolors.threes[curr_three]
			for _i in range (Widerstandsdigits.threes.size()-1,0,-1):
				curr_3 = (curr_3 + 1) % Widerstandsdigits.threes.size()
				threeDigit.texture = Widerstandsdigits.threes[curr_3]
				
func _on_up3_mouse_entered():
	$three/upS.scale = Vector2(1.1,1.1)
func _on_up3_mouse_exited():
	$three/upS.scale = Vector2(1,1)
func _on_do3_mouse_entered():
	$three/dowS.scale = Vector2(1.1,1.1)
func _on_do3_mouse_exited():
	$three/dowS.scale = Vector2(1,1)

func _on_up4_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			for _i in range (Widerstandcolors.fours.size()-1,0,-1):
				curr_four = (curr_four + 1) % Widerstandcolors.fours.size()
				fourSprite.texture = Widerstandcolors.fours[curr_four]
			for _i in range (Widerstandsdigits.fours.size()-1,0,-1):
				curr_4 = (curr_4+ 1) % Widerstandsdigits.fours.size()
				fourDigit.texture = Widerstandsdigits.fours[curr_4]
				
func _on_do4_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			curr_four = (curr_four + 1) % Widerstandcolors.fours.size()
			fourSprite.texture = Widerstandcolors.fours[curr_four]
			curr_4 = (curr_4 + 1) % Widerstandsdigits.fours.size()
			fourDigit.texture = Widerstandsdigits.fours[curr_4]
			
func _on_up4_mouse_entered():
	$four/upS.scale = Vector2(1.1,1.1)
func _on_up4_mouse_exited():
	$four/upS.scale = Vector2(1,1)
func _on_do4_mouse_entered():
	$four/dowS.scale = Vector2(1.1,1.1)
func _on_do4_mouse_exited():
	$four/dowS.scale = Vector2(1,1)

func _on_upD_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			curr_1 = (curr_1 + 1) % Widerstandsdigits.ones.size()
			oneDigit.texture = Widerstandsdigits.ones[curr_1]
			curr_one = (curr_one + 1) % Widerstandcolors.ones.size()
			oneSprite.texture = Widerstandcolors.ones[curr_one]
			
func _on_doD_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			for _i in range (Widerstandsdigits.ones.size()-1,0,-1):
				curr_1 = (curr_1 + 1) % Widerstandsdigits.ones.size()
				oneDigit.texture = Widerstandsdigits.ones[curr_1]
			for _i in range (Widerstandcolors.ones.size()-1,0,-1):
				curr_one = (curr_one + 1) % Widerstandcolors.ones.size()
				oneSprite.texture = Widerstandcolors.ones[curr_one]	
				
func _on_doD_mouse_entered():
	$one2/dowS.scale = Vector2(1.1,1.1)
func _on_doD_mouse_exited():
	$one2/dowS.scale = Vector2(1,1)
func _on_upD_mouse_entered():
	$one2/upS.scale = Vector2(1.1,1.1)
func _on_upD_mouse_exited():
	$one2/upS.scale = Vector2(1,1)




func _on_upD2_mouse_entered():
	$two2/upS.scale = Vector2(1.1,1.1)


func _on_upD2_mouse_exited():
	$two2/upS.scale = Vector2(1,1)


func _on_doD2_mouse_entered():
	$two2/dowS.scale = Vector2(1.1,1.1)


func _on_doD2_mouse_exited():
	$two2/dowS.scale = Vector2(1,1)


func _on_upD3_mouse_entered():
	$three2/upS.scale = Vector2(1.1,1.1)


func _on_upD3_mouse_exited():
	$three2/upS.scale = Vector2(1,1)


func _on_doD3_mouse_entered():
	$three2/dowS.scale = Vector2(1.1,1.1)


func _on_doD3_mouse_exited():
	$three2/dowS.scale = Vector2(1,1)


func _on_upD4_mouse_entered():
	$four2/upS.scale = Vector2(1.1,1.1)


func _on_upD4_mouse_exited():
	$four2/upS.scale = Vector2(1,1)


func _on_doD4_mouse_entered():
	$four2/dowS.scale = Vector2(1.1,1.1)


func _on_doD4_mouse_exited():
	$four2/dowS.scale = Vector2(1,1)


func _on_Buttonlabel_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			get_tree().change_scene("res://scenes/Aufgabe_3.tscn")


func _on_Buttonlabel_mouse_entered():
	$ButtonClose/ButtonSprite.scale = Vector2(1.1,1.1)


func _on_Buttonlabel_mouse_exited():
	$ButtonClose/ButtonSprite.scale = Vector2(1,1)
