extends Node2D

var tile_size := Globals.tile_size
var blocks = Globals.blocks
var tick_time = Globals.tick_time

onready var location : Vector2 setget set_location
onready var old_location: Vector2
var connected_blocks = []
onready var blocks_node = get_node("/root/Builder/Blocks")
export var can_move = true
export var can_rotate = false
export var can_activate = false
export var can_destroy = true
export var conducting = false

var frozen = false

func _process(_delta):
	if frozen:
		modulate = Color.red
	else:
		modulate = Color.white

func connect_block(block):
	if connected_blocks.find(block) == -1:
		connected_blocks.append(block)
		block.connected_blocks.append(self)

func disconnect_block(block):
	if connected_blocks.find(block) != -1:
		block.connected_blocks.erase(self)
		connected_blocks.erase(block)

func set_location(val: Vector2):
	location = val
	$Tween.interpolate_property(self, "position", null, location*tile_size, tick_time)
	$Tween.start()
	frozen = true

func force_set_location(val: Vector2):
	$Tween.stop_all()
	location = val
	old_location = val
	position = location * tile_size

func delete():
	if can_destroy:
		for connected in connected_blocks:
			connected.connected_blocks.erase(self)
		blocks.erase(location)
		queue_free()

func move(amount: Vector2):
	var checked_blocks = []
	if move_recursive(checked_blocks, amount):
		for block in checked_blocks:
			block.location += amount
		blocks.clear()
		for block in blocks_node.get_children():
			blocks[block.location] = block
		return true
	else:
		return false

func move_recursive(checked_blocks: Array, amount: Vector2):
	# Check if block has already been processed
	if checked_blocks.find(self) != -1:
		return true
	else:
		checked_blocks.append(self)
	
	# Check if block allowed to move
	if frozen or not can_move:
		return false
	
	# Check if all connected blocks can move
	for connected in connected_blocks:
		if not connected.move_recursive(checked_blocks, amount):
			return false
	
	# Check if 
	var target_location = self.location + amount
	var block_at_target = blocks.get(target_location)
	if block_at_target != null:
		if not block_at_target.move_recursive(checked_blocks, amount):
			return false
	return true
