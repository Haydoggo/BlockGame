extends Node2D
class_name Goal

var targets = []

func add_block(type: String, location: Vector2):
	targets.append({"type" : type, "location" : location})
	var tex = TextureRect.new()
	tex.texture = Globals.block_types[type]["tex"]
	tex.rect_position = location * Globals.tile_size
	tex.modulate = ColorN("white", 0.3)
	add_child(tex)

func add_blocks(block_list: Array, origin: Vector2):
	for row in range(block_list.size()):
		for col in range(block_list[0].size()):
			var type = block_list[row][col]
			if type != null:
				add_block(type, origin + Vector2(col, row))
