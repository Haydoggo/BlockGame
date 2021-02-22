extends "res://Scripts/PusherBlock.gd"

func set_power(powered):
	var was_powered = power
	power = powered
	if powered and not was_powered:
		emit_steam()
		var target_block : Block = blocks.get(old_location+direction)
		if target_block == null:
			return
		var connected_blocks = target_block.get_all_connected()
		var can_rotate = true
		for block in connected_blocks:
			block = block as Block
			var new_location = ((block.location - target_block.location).rotated(PI/2)
					 + target_block.location).round()
			var block_at_target = blocks.get(new_location)
			if block_at_target != null and block_at_target != block:
				can_rotate = false
				break
		if can_rotate:
			for block in connected_blocks:
				block = block as Block
				var new_location = ((block.location - target_block.location).rotated(PI/2)
						 + target_block.location).round()
				block.location = new_location
			update_blocks()
