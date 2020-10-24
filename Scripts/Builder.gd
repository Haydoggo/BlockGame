extends Node2D

var tile_size = Globals.tile_size
var blocks = Globals.blocks
var tick_time = Globals.tick_time

var m_pos := Vector2.ZERO
var m_pos_screen := Vector2.ZERO
var m_pos_prev := Vector2.ZERO
var m_pos_screen_prev := Vector2.ZERO
var cursor_location := Vector2.ZERO
var link_from = null
var link_to = null
var disconnecting = false
var playing = false
var activate_queued = false

onready var cursor = $Cursor
onready var camera = $Camera2D
onready var timer = $Timer

onready var slide_block_res = preload("res://Scenes/SliderBlock.tscn")
onready var blocker_block_res = preload("res://Scenes/BlockerBlock.tscn")
onready var pusher_res = preload("res://Scenes/PusherBlock.tscn")
onready var piston_res = preload("res://Scenes/PistonBlock.tscn")
onready var power_block_res = preload("res://Scenes/PowerBlock.tscn")

onready var block_types = [	{"res": slide_block_res, 	"tex": preload("res://Sprites/Block.png"), "name": "Block"},
							{"res": blocker_block_res,	"tex": preload("res://Sprites/Icon.png"), "name": "Blocker"},
							{"res": pusher_res,			"tex": preload("res://Sprites/SteamBlock.png"), "name": "Pusher"},
							{"res": piston_res,			"tex": preload("res://Sprites/PusherBlock.png"), "name": "Piston"},
							{"res": power_block_res, 	"tex": preload("res://Sprites/PowerBlock.png"), "name": "Power"}]
onready var block_type = block_types[0]


func _ready():
	cursor.texture = block_type["tex"]
	OS.window_maximized =true
	camera.position = get_viewport().size/2
	timer.paused = true
	timer.wait_time = tick_time * 1

func _process(_delta):
	# Handle cursor
	m_pos = get_global_mouse_position()
	m_pos_screen = get_viewport().get_mouse_position()
	cursor.position = (m_pos - Vector2.ONE * tile_size/2).snapped(tile_size*Vector2.ONE) + Vector2.ONE*tile_size/2
	cursor_location = (m_pos/tile_size).floor()
	
	if Input.is_action_just_pressed("play"):
		if Input.is_action_pressed("shift"):
			if playing:
				timer.paused = true
				playing = false
			else:
				timer.paused = false
				playing = true
		else:
			activate_queued = true
	
	if Input.is_action_just_pressed("connect"):
		disconnecting = Input.is_action_pressed("shift")
		link_from = blocks.get(cursor_location)
	
	if Input.is_action_pressed("connect"):
		link_to = blocks.get(cursor_location)
	
	if Input.is_action_just_released("connect"):			
		if link_from != null and link_to != null and link_to != link_from:
			if disconnecting:
				link_from.disconnect_block(link_to)
				print("disconnect")
			else:
				link_from.connect_block(link_to)
				print("connect")
		link_from = null
		link_to = null
	
	if Input.is_action_just_pressed("ui_focus_next"):
		var index = block_types.find(block_type)
		index = (index + 1) % block_types.size()
		block_type = block_types[index]
		cursor.texture = block_type["tex"]
	
	if Input.is_action_pressed("left_click") and Input.is_action_pressed("shift")\
	or Input.is_action_just_pressed("left_click"):
		if blocks.get(cursor_location) == null:
			var block : Node2D
			block = block_type["res"].instance()
			$Blocks.add_child(block)
			block.force_set_location(cursor_location)
			blocks[cursor_location] = block
	
	if Input.is_action_pressed("right_click"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.delete()
	
	if Input.is_action_just_pressed("rotate_block_CW"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			if block.can_rotate:
				var rotation = PI/2
				if Input.is_action_pressed("shift"):
					rotation = -PI/2
				block.direction = block.direction.rotated(rotation)
	
	if Input.is_action_just_pressed("ui_accept"):
		if blocks.get(cursor_location) == null:
			var block : Node2D
			block = block_types[4]["res"].instance()
			$Blocks.add_child(block)
			block.force_set_location(cursor_location)
			blocks[cursor_location] = block
		activate_queued = true
	
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
	
	if Input.is_action_pressed("ui_down"):
		var block
		block = blocks.get(cursor_location)
		if block != null:
			block.move(Vector2.DOWN)
	
	if Input.is_action_pressed("middle_click"):
		camera.position -= (m_pos_screen - m_pos_screen_prev)*camera.zoom
	
	var indicator = $UI/MarginContainer/VBoxContainer/PlayingIndicator
	if activate_queued:
#		$AudioStreamPlayer.seek(0)
#		$AudioStreamPlayer.play()
		$Tween.interpolate_property(indicator, "modulate", Color.lime, Color.red, 0.3)
		$Tween.start()
		indicator.modulate = Color.lime
		activate_queued = false
		var activated_blocks = []
		var power_states = {}
		for powerable_block in get_tree().get_nodes_in_group("power_dependent"):
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
#			powerable_block.power = power
		
		# depower unpowered blocks
		for powerable_block in get_tree().get_nodes_in_group("power_dependent"):
			var power_state = power_states.get(powerable_block)
			if power_state == false:
				powerable_block.power = false
		
		# power powered blocks
		for powerable_block in get_tree().get_nodes_in_group("power_dependent"):
			var power_state = power_states.get(powerable_block)
			update()
			if power_state == true:
				powerable_block.power = true
		
		for block in $Blocks.get_children():
			block.frozen = false
			block.old_location = block.location
	
	$UI/MarginContainer.rect_size = get_viewport().size
	var label = $UI/MarginContainer/VBoxContainer/Label
	label.text = ""
	label.text += "Placing: {block_type}".format({"block_type":block_type["name"]})
	if playing:
		label.text += "\nPlaying"
#	for key in blocks.keys():		
#		label.text += "\n{key}: {val}".format({"key":key, "val":blocks[key]})
	m_pos_prev = m_pos
	m_pos_screen_prev = m_pos_screen
	
	update()

func _input(event : InputEvent) -> void:
	var zoom_factor = 1.3
	var cam_to_mouse = m_pos - camera.position
	if event is InputEventMouseButton:
		if event.pressed:
			match event.button_index:
				BUTTON_WHEEL_UP:
					camera.zoom /= zoom_factor
					camera.position = m_pos - cam_to_mouse/zoom_factor
				BUTTON_WHEEL_DOWN:
					camera.zoom *= zoom_factor
					camera.position = m_pos - cam_to_mouse*zoom_factor


func _on_Timer_timeout():
	activate_queued = true
