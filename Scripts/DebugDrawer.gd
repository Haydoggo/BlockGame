extends Node2D


onready var tile_size = Globals.tile_size
onready var builder = get_parent()

func _process(_delta):
	update()

func _draw():
	for block in $"../Blocks".get_children():
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
