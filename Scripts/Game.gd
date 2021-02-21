extends Node2D

var tick_time = Globals.tick_time
var tile_size = Globals.tile_size

var m_pos_screen := Vector2.ZERO
var m_pos_screen_prev := Vector2.ZERO
var playing = true
var active_build_zone = null
var activate_queued = false

var block_type = "Block"

export(NodePath) var indicator_path
export(NodePath) var GUI_path

onready var camera = $Camera2D
onready var timer = $Timer
onready var build_zones = $BuildZones

func _ready():
	timer.paused = !playing
	timer.wait_time = tick_time * 1
	OS.window_maximized =true
	
	var pos_arr = [Vector2(0,0), Vector2(tile_size*18, 0), Vector2(0, tile_size*18), Vector2(tile_size*18, tile_size*18)]
	var ext_arr = [Vector2(16,16), Vector2(1024, 16), Vector2(16, 1024), Vector2(1024, 1024)]
	for i in range(4):
		var build_zone = preload("res://Scenes/Builder.tscn").instance()
		$BuildZones.add_child(build_zone)
		build_zone.position = pos_arr[i]
		build_zone.extents = ext_arr[i]
		build_zone._ready()
	
	var goal : Goal = Globals.goal_res.instance()
	var source = Globals.goal_res.instance()
	var block_list = [	[null, "Block", null],
						["Block", "Power", "Block"],
						[null, "Block", null],
						[null, "Block", null]]
	goal.add_blocks(block_list, Vector2(3,3))
	source.add_blocks(block_list, Vector2(15,3))
	
	$BuildZones.get_child(3).get_node("Goals").add_child(goal)
	$BuildZones.get_child(3).get_node("Sources").add_child(source)
	
	
	goal = Globals.goal_res.instance()
	source = Globals.goal_res.instance()
	block_list = [["Block"]]
	goal.add_blocks(block_list, Vector2(20,30))
	goal.add_blocks(block_list, Vector2(21,30))
	goal.add_blocks(block_list, Vector2(22,30))
	source.add_blocks(block_list, Vector2(20,32))
	
	$BuildZones.get_child(3).get_node("Goals").add_child(goal)
	$BuildZones.get_child(3).get_node("Sources").add_child(source)
#	camera.position = build_zone.extents*Globals.tile_size/2

func activate():
	var indicator = get_node(indicator_path)
	$Tween.interpolate_property(indicator, "modulate", Color.lime, Color.red, 0.3)
	$Tween.start()
	for build_zone in build_zones.get_children():
		build_zone.activate()

func _process(_delta):
	
	active_build_zone = null
	for build_zone in build_zones.get_children():
		build_zone.cursor.visible = false
		build_zone.active = false
	
	m_pos_screen = get_viewport().get_mouse_position()
	var GUI = get_node(GUI_path)
	var rect = Rect2(GUI.rect_global_position, GUI.rect_size)
	if not rect.has_point(m_pos_screen):
		for build_zone in build_zones.get_children():
			var m_pos = build_zone.get_local_mouse_position()
			var extents_rect = Rect2(Vector2.ZERO, build_zone.extents*build_zone.tile_size)
			if extents_rect.has_point(m_pos):
				build_zone.active = true
				build_zone.process()
				active_build_zone = build_zone
				
				continue	
	
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
	
	if Input.is_action_pressed("middle_click"):
		camera.position -= (m_pos_screen - m_pos_screen_prev)*camera.zoom
	
	if activate_queued:
		activate_queued = false
		activate()
	
	m_pos_screen_prev = m_pos_screen
	update()

func _input(event : InputEvent) -> void:
	var zoom_factor = 1.3
	var m_pos = get_global_mouse_position()
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

func _draw():
	for builder in $BuildZones.get_children():
		for block in builder.get_node("Blocks").get_children():
			for connected in block.connected_blocks:
				draw_line(block.global_position, connected.global_position, Color.white, 4.0)
		
		var connection_color = Color.white
		if builder.disconnecting:
			connection_color = Color.red
		
		if builder.link_from != null:
			var block = builder.link_from
			draw_arc(block.global_position, 32, 0.0, 2*PI, 40, connection_color, 4, true)
			draw_line(block.global_position, get_global_mouse_position(), connection_color, 4)
			if builder.disconnecting:
				for connected in block.connected_blocks:
					draw_arc(connected.global_position, 16, 0.0, 2*PI, 40, connection_color, 4, true)
			
		
		if builder.link_to != null:
			var block = builder.link_to
			draw_arc(block.global_position, 32, 0.0, 2*PI, 40, connection_color, 4, true)
