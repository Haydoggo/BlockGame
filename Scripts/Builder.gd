extends Node2D

var tile_size = Globals.tile_size
#var blocks = Globals.blocks
var tick_time = Globals.tick_time

export var extents := Vector2(16, 16)

var m_pos := Vector2.ZERO
var cursor_location := Vector2.ZERO
var link_from = null
var link_to = null
var disconnecting = false
var activate_queued = false

onready var blocks = {}
onready var block_networks = []
onready var active = false
onready var cursor = $Cursor
onready var block_types = Globals.block_types

var block_type

func _ready():
	block_type = block_types[get_node("/root/Game").block_type]
	cursor.texture = block_type["tex"]
	$Background/BackgroundTiles.rect_size = extents*tile_size

func process():
	block_type = block_types[get_node("/root/Game").block_type]
	cursor.texture = block_type["tex"]
	cursor.visible = true
	
	cursor.visible = true
	m_pos = get_local_mouse_position()
	cursor.position = (m_pos-Vector2.ONE*tile_size/2).snapped(Vector2.ONE*tile_size)
	cursor_location = (m_pos/tile_size).floor()
	
	if Input.is_action_just_pressed("connect"):
		disconnecting = Input.is_action_pressed("shift")
		link_from = blocks.get(cursor_location)
	
	if Input.is_action_pressed("connect"):
		link_to = blocks.get(cursor_location)
	
	if Input.is_action_just_released("connect"):			
		if link_from != null and link_to != null and link_to != link_from:
			if disconnecting:
				link_from.disconnect_block(link_to)
			else:
				link_from.connect_block(link_to)
		link_from = null
		link_to = null
	
	if Input.is_action_pressed("left_click") and Input.is_action_pressed("shift")\
	or Input.is_action_just_pressed("left_click"):
		if blocks.get(cursor_location) == null:
			var block : Node2D
			block = block_type["res"].instance()
			$Blocks.add_child(block)
			block.force_set_location(cursor_location)
			blocks[cursor_location] = block
	
	if Input.is_action_just_pressed("rotate_block_CW"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.type = block_type["name"]
			if block.can_rotate:
				var rotation = PI/2
				if Input.is_action_pressed("shift"):
					rotation = -PI/2
				block.direction = block.direction.rotated(rotation)
	
	if Input.is_action_just_pressed("ui_accept"):
		if blocks.get(cursor_location) == null:
			var block : Node2D
			block = block_types["Power"]["res"].instance()
			$Blocks.add_child(block)
			block.force_set_location(cursor_location)
			blocks[cursor_location] = block
	
	if Input.is_action_just_pressed("pipette"):
		var block = blocks.get(cursor_location)
		if block != null:
			get_node("/root/Game").block_type = block.type
			block_type = block_types[get_node("/root/Game").block_type]
			cursor.texture = block_type["tex"]
			
	
	if Input.is_action_just_pressed("ui_left"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.move(Vector2.LEFT)
	
	if Input.is_action_just_pressed("ui_right"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.move(Vector2.RIGHT)
	
	if Input.is_action_just_pressed("ui_up"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.move(Vector2.UP)
	
	if Input.is_action_just_pressed("ui_down"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.move(Vector2.DOWN)

	if Input.is_action_pressed("right_click"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			if block.can_destroy:
				block.delete()

func activate():
	var activated_blocks = []
	var power_states = {}
	var powerable_blocks = []
	
	for goal in $Goals.get_children():
		var blocks_in_zone = []
		for target in goal.targets:
			var block = blocks.get(target["location"])
			if block != null:
				if block.type == target["type"]:
					blocks_in_zone.append(block)
		if blocks_in_zone.size() == goal.targets.size():
			for block in blocks_in_zone:
				block.delete()
	
	for source in $Sources.get_children():
		var blocks_in_zone = []
		var blocked = false
		for target in source.targets:
			var block = blocks.get(target["location"])
			if block != null:
				blocked = true
				break
		if not blocked:
			var prev_block = null
			for target in source.targets:
				var block : Node2D
				var type = target["type"]
				block = block_types[type]["res"].instance()
				block.modulate = Color.cornflower
				block.force_set_location(target["location"])
				blocks[block.location] = block
				$Blocks.add_child(block)
				if prev_block != null:
					block.connect_block(prev_block)
				prev_block = block
	
	for block in $Blocks.get_children():
		if block.can_activate:
			powerable_blocks.append(block)
	for powerable_block in powerable_blocks:
		var power = false
		if activated_blocks.find(powerable_block) != -1:
			continue
		if powerable_block.frozen:
			continue
		for dir in [Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN]:
			var neighbour = blocks.get(powerable_block.location + dir)
			if neighbour != null:
				if neighbour.conducting and not neighbour.frozen:
					power = true
					activated_blocks.append(powerable_block)
		power_states[powerable_block] = power
	
	# depower unpowered blocks
	for powerable_block in powerable_blocks:
		var power_state = power_states.get(powerable_block)
		if powerable_block.is_queued_for_deletion():
			continue
		if power_state == false:
			powerable_block.power = false
	
	# power powered blocks
	for powerable_block in powerable_blocks:
		var power_state = power_states.get(powerable_block)
		if powerable_block.is_queued_for_deletion():
			continue
		if power_state == true:
			powerable_block.power = true
	
	for block in $Blocks.get_children():
		block.frozen = false
		block.old_location = block.location
