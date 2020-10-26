extends "res://Scripts/PusherBlock.gd"

onready var piston_rod = null
onready var extended = false
onready var attached_block = null

func set_power(powered):
	# Extend
#	if power == powered or frozen:
#		pass
#		return
	
	power = powered
	if powered and not extended:
		emit_steam()
		var welding = false
		var target_block = builder_node.blocks.get(location+direction)
		if target_block != null:
			welding = connected_blocks.find(target_block) != -1
			if welding:
				# Remove connection to block so it can be moved
				disconnect_block(target_block)
		
		var checked_blocks = []
		var move_dir = direction
		
		# Extend if there is no impeding block
		if target_block ==  null:
			extended = true
			welding = false
			
		# Try to push block forward
		elif target_block.move_recursive(checked_blocks, move_dir):
			if checked_blocks.find(self) == -1:
				extended = true
		
		# Try to push piston back
		else:
			checked_blocks = []
			move_dir = -direction
			if move_recursive(checked_blocks, move_dir):
				if checked_blocks.find(target_block) == -1:
					extended = true
		
		# Successful extension
		if extended == true:		
			if welding:
				attached_block = target_block
			for block in checked_blocks:
					block.location += move_dir
			builder_node.blocks.clear()
			for block in blocks_node.get_children():
				if not block.is_queued_for_deletion():
					builder_node.blocks[block.location] = block
			create_piston_rod(welding)
		
		# Extension failed
		elif welding:
			connect_block(target_block)
	
	# Retract
	elif extended and not powered:
		var block_in_front = builder_node.blocks.get(piston_rod.location + direction)
		if block_in_front != null:
			if block_in_front.connected_blocks.find(piston_rod) != -1:
				attached_block = block_in_front
		if attached_block == null:
			retract_rod()
			piston_rod.can_destroy = true
			piston_rod.delete()
			extended = false
		else:
			# Destroy piston rod to prevent collisions during retraction
			piston_rod.can_destroy = true
			piston_rod.delete()
			
			# Try to pull in connected blocks
			var checked_blocks = []
			var move_dir = -direction
			if attached_block.move_recursive(checked_blocks, move_dir):
				if checked_blocks.find(self) == -1:
					extended = false
			
			# Try to pull piston towards connected blocks
			else:
				checked_blocks = []
				move_dir = direction
				if move_recursive(checked_blocks, move_dir):	
					if checked_blocks.find(attached_block) == -1:
						extended = false
			
			 # If retraction was successful, update blocks dict
			if not extended:
				retract_rod()
				if attached_block != null:
					connect_block(attached_block)
					attached_block = null
				for block in checked_blocks:
					block.location += move_dir
				builder_node.blocks.clear()
				for block in blocks_node.get_children():
					if not (block.is_queued_for_deletion() or block == piston_rod):
						builder_node.blocks[block.location] = block
			
			# Retraction failed, replace piston rod
			else:
				var welding = attached_block != null
				create_piston_rod(welding)
				piston_rod.force_set_location(location + direction)
	
	
	if extended:
		can_rotate = false
		$Indicator.modulate = Color.lime
	else:
		can_rotate = true
		$Indicator.modulate = Color.red

func create_piston_rod(welding: bool):
	piston_rod = Globals.block_res.instance()
	get_parent().add_child(piston_rod)
	connect_block(piston_rod)
	piston_rod.force_set_location(location)
	piston_rod.get_node("Sprite").scale.y = 0.4
	piston_rod.rotation = direction.angle()
	piston_rod.location += direction
	piston_rod.z_index = -1
	piston_rod.can_destroy = false
	builder_node.blocks[piston_rod.location] = piston_rod
	var pushed_block = builder_node.blocks.get(piston_rod.location + direction)
	if pushed_block != null and welding:
		piston_rod.connect_block(pushed_block)
		attached_block = pushed_block

func retract_rod():
#	return
	var rod = Sprite.new()
	rod.texture = load("res://Sprites/Block.png")
	add_child(rod)
	rod.position = direction*tile_size
	rod.scale.y = 0.4
	rod.rotation = direction.angle()
	rod.z_index = -1
	$Tween.interpolate_property(rod, "position", null, Vector2.ZERO, tick_time)
	$Tween.start()
	yield(get_tree().create_timer(tick_time), "timeout")
	rod.queue_free()
	

func delete():
	#remove piston rod
	if piston_rod != null:
		for connected in piston_rod.connected_blocks:
			connected.connected_blocks.erase(piston_rod)
		builder_node.blocks.erase(piston_rod.location)
		piston_rod.queue_free()
	
	for connected in connected_blocks:
		connected.connected_blocks.erase(self)
	builder_node.blocks.erase(location)
	queue_free()

func _ready():
	pass
