extends CanvasLayer

onready var buttons = $MarginContainer/HBoxContainer/GUIPanel/MarginContainer/Buttons
func _ready():
	var args = Globals.block_types.keys()
	for block_type in args:
		var button = TextureButton.new()
		button.connect("pressed", self, "button", [block_type])
		button.texture_normal = Globals.block_types[block_type]["tex"]
		button.name = block_type
		button.hint_tooltip = block_type
		buttons.add_child(button)
		
#	var i = 0
#	for button in buttons:
#		button.connect("pressed", self, "button", [args[i]])
#		i += 1

func button(type):
	get_parent().block_type = type
