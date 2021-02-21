extends "res://Scripts/PusherBlock.gd"

func set_power(powered):
	power = powered
	if powered:
		emit_steam()
		var target_block = blocks.get(old_location+direction)
		push_block(target_block, direction.rotated(PI/2).round())
		update_blocks()
