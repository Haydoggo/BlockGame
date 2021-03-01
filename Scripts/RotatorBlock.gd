extends "res://Scripts/PusherBlock.gd"

var flipped := false setget set_flipped

func set_power(powered):
	var was_powered = power
	power = powered
	if not powered or was_powered:
		return
	emit_steam()
	var target_block : Block = blocks.get(old_location+direction)
	if target_block == null:
		return
	var connected_blocks = target_block.get_all_connected()
	var can_rotate = true
	var new_locations = []
	for block in connected_blocks:
		block = block as Block
		var rotation_angle = PI/2 * (-1 if flipped else 1)
		var new_location = ((block.location - target_block.location).rotated(rotation_angle)
				 + target_block.location).round()
		var block_at_target = blocks.get(new_location)
		if block_at_target != null and block_at_target != block:
			can_rotate = false
			break
		new_locations.append(new_location)
	if can_rotate:
		for block in connected_blocks:
			block = block as Block
			block.location = new_locations.pop_front()
		update_blocks()

func set_flipped(val : bool):
	flipped = val
	$RotationIndicator.scale.x = -1 if flipped else 1

func get_input(event : InputEvent):
	.get_input(event)
	if event.is_action_pressed("flip_block"):
		self.flipped = ! flipped
