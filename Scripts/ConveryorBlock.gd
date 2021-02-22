extends "res://Scripts/PusherBlock.gd"

var flipped := false setget set_flipped

func set_power(powered):
	power = powered
	if powered:
		emit_steam()
		var target_block = blocks.get(old_location + direction)
		push_block(target_block, direction.rotated(PI/2 * (-1 if flipped else 1)).round())
		update_blocks()

func set_flipped(val : bool):
	flipped = val
	$DirectionIndicator/Arrow.scale.x = -1 if flipped else 1
	$DirectionIndicator/Particles2D.scale.x = -1 if flipped else 1

func get_input(event : InputEvent):
	.get_input(event)
	if event.is_action_pressed("flip_block"):
		self.flipped = ! flipped
