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

func push_block(target_block, dir:Vector2, exclude=[]):
	var checked_blocks = exclude.duplicate()
	if target_block ==  null:
		return true
	if target_block.move_recursive(checked_blocks, dir):
		if checked_blocks.find(self) != -1:
			return false
		for block in checked_blocks:
			block.location += dir
		return true
	else:
		checked_blocks = exclude.duplicate()
		if move_recursive(checked_blocks, -dir):
			if checked_blocks.find(target_block) != -1:
				return false
			for block in checked_blocks:
				block.location += -dir
			return true
		else:
			return false

func set_power(powered):
	power = powered
	if powered:
		emit_steam()
		var target_block = blocks.get(old_location+direction)
		push_block(target_block, direction)
		update_blocks()
