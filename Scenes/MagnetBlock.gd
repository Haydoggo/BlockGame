extends "res://Scripts/PusherBlock.gd"

func set_power(powered):
	power = powered
	can_rotate = not powered
	var target_block : Block = blocks.get(old_location + direction)
	if target_block != null:
		if powered:
			connect_block(target_block)
		else:
			disconnect_block(target_block)
	$Indicator.modulate = Color.lime if powered else Color.gold
