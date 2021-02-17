extends "res://Scripts/PusherBlock.gd"

onready var piston_rod = null
onready var extended = false
onready var attached_block = null

func _ready():
	pass
	
func set_power(powered):
	# Extend
	if frozen:
		return
	power = powered
	if powered and not extended:
		var target_block = blocks.get(location+direction)
		var connected_block = null
		if connected_blocks.find(target_block) != -1:
			connected_block = target_block
			disconnect_block(connected_block)
		else:
			connected_block = null
		if push_block(target_block, direction):
			update_blocks()
			extended = true
			extend_rod()
			connect_block(piston_rod)
			if connected_block != null:
				piston_rod.connect_block(connected_block)
		else:
			if connected_block != null:
				connect_block(connected_block)
		emit_steam()
	
	# Retract
	elif extended and not powered:
		var target_block = blocks.get(piston_rod.location + direction)
		if piston_rod.connected_blocks.find(target_block) != -1:
			if push_block(target_block, -direction, [piston_rod]):
				retract_rod()
				update_blocks()
				connect_block(target_block)
				extended = false
		else:
			retract_rod()
			extended = false
	
	if extended:
		can_rotate = false
		$Indicator.modulate = Color.lime
	else:
		can_rotate = true
		$Indicator.modulate = Color.gold
	
	if extended != powered:
		$Indicator.modulate = Color.red

func extend_rod():
	piston_rod = Globals.block_res.instance()
	get_parent().add_child(piston_rod)
	connect_block(piston_rod)
	piston_rod.force_set_location(location)
	piston_rod.location += direction
	piston_rod.visible = false
	$GhostRod.rotation = direction.angle()
	$Tween.interpolate_property($GhostRod, "position", null, direction*tile_size, tick_time)
	$Tween.start()
	piston_rod.can_destroy = false
	blocks[piston_rod.location] = piston_rod

func retract_rod():
#	return
	piston_rod.delete()
	$Tween.interpolate_property($GhostRod, "position", null, Vector2.ZERO, tick_time)
	$Tween.start()

func delete():
	#remove piston rod
	if piston_rod != null:
		piston_rod.delete()
	.delete()
