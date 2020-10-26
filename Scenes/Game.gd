extends Node2D

var tick_time = Globals.tick_time

var m_pos_screen := Vector2.ZERO
var m_pos_screen_prev := Vector2.ZERO
var playing = false

onready var camera = $Camera2D
onready var timer = $Timer

func _ready():
	camera.position = get_viewport().size/2
	timer.paused = true
	timer.wait_time = tick_time * 1
	OS.window_maximized =true
	if OS.get_environment("USERNAME") == "Hayden":
		OS.set_current_screen(1)
	
	var pos = Vector2.DOWN*16*64
	var pos_2 = pos + Vector2.LEFT*8*64
	for i in range(10):
		var build_zone = preload("res://Scenes/Builder.tscn").instance()
		$BuildZones.add_child(build_zone)
		build_zone.position = pos_2
		build_zone.rotation = pos.angle() - PI/2
		build_zone.get_node("UI/MarginContainer/Tips").visible = false
		pos = pos.rotated(PI*2/10)
		pos_2 = pos_2.rotated(PI*2/10)

func _process(_delta):
	m_pos_screen = get_viewport().get_mouse_position()
	
	if Input.is_action_just_pressed("play"):
		if Input.is_action_pressed("shift"):
			if playing:
				timer.paused = true
				playing = false
			else:
				timer.paused = false
				playing = true
		else:
			for build_zone in $BuildZones.get_children():
				build_zone.activate()
	
	if Input.is_action_pressed("middle_click"):
		camera.position -= (m_pos_screen - m_pos_screen_prev)*camera.zoom
	
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
	for build_zone in $BuildZones.get_children():
		build_zone.activate()


	

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
			draw_line(block.global_position, builder.m_pos, connection_color, 4)
			if builder.disconnecting:
				for connected in block.connected_blocks:
					draw_arc(connected.global_position, 16, 0.0, 2*PI, 40, connection_color, 4, true)
			
		
		if builder.link_to != null:
			var block = builder.link_to
			draw_arc(block.global_position, 32, 0.0, 2*PI, 40, connection_color, 4, true)
