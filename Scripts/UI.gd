extends CanvasLayer

onready var buttons = $MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons.get_children()
func _ready():
	var args = Globals.block_types.keys()
	var i = 0
	for button in buttons:
		button.connect("pressed", self, "button", [args[i]])
		i += 1

func button(type):
	get_parent().block_type = type
	print(type)
