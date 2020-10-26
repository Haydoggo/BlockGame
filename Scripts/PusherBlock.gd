extends "res://Scripts/Block.gd"
onready var direction = Vector2.RIGHT setget set_dir
onready var power = false setget set_power

func emit_steam():
	$DirectionIndicator/Particles2D.restart()
	$DirectionIndicator/Particles2D.emitting = true

func set_dir(new_dir: Vector2):
	$Tween.stop_all()
	$DirectionIndicator.rotation = direction.angle()
	var turn_angle = direction.angle_to(new_dir)
	var end_angle = $DirectionIndicator.rotation + turn_angle
	direction = new_dir.round()
	$Tween.interpolate_property($DirectionIndicator, "rotation", null, end_angle, 0.4, Tween.TRANS_BOUNCE, Tween.EASE_OUT)
	$Tween.start()

func set_power(powered):
	power = powered
	if powered:
		emit_steam()
		var checked_blocks = []
		var target_block = builder_node.blocks.get(old_location+direction)
		if target_block ==  null:
			return true
		if target_block.move_recursive(checked_blocks, direction):
			if checked_blocks.find(self) != -1:
				return false
			for block in checked_blocks:
				block.location += direction
			builder_node.blocks.clear()
			for block in blocks_node.get_children():
				builder_node.blocks[block.location] = block
			return true
		else:
			checked_blocks = []
			if move_recursive(checked_blocks, -direction):
				if checked_blocks.find(target_block) != -1:
					return false
				for block in checked_blocks:
					block.location += -direction
				builder_node.blocks.clear()
				for block in blocks_node.get_children():
					builder_node.blocks[block.location] = block
				return true
			else:
				return false
