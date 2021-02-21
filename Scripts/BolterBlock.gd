extends "res://Scripts/PusherBlock.gd"

var on_cooldown = false
var last_block

func set_power(powered):
	power = powered
	if powered:
		var target_block : Block = blocks.get(old_location + direction)
		if target_block != null:
			if target_block != last_block:
				on_cooldown = false
			last_block = target_block
			if on_cooldown:
				return
			var connectec_blocks = target_block.get_all_connected()
			var bolt_target : Block = blocks.get(target_block.location + direction)
			while(connectec_blocks.has(bolt_target)):
				if bolt_target == null:
					break
				target_block = bolt_target
				bolt_target = blocks.get(bolt_target.location + direction)
			if bolt_target != null:
				target_block.connect_block(bolt_target)
				$DirectionIndicator/Particles2D.emitting = true
				on_cooldown = true
				
				# Pretty dodgy code, fix later
				var effect = preload("res://Scenes/BoltEffect.tscn").instance()
				effect.position = (target_block.position + bolt_target.position) * 0.5
				effect.position += Vector2(32,32)
				effect.rotation = direction.angle()
				get_parent().get_parent().add_child(effect)
				effect.get_node("Particles2D").emitting = true
				effect.get_node("Particles2D2").emitting = true
		else:
			on_cooldown = false
	else:
		on_cooldown = false
	
	$Indicator.modulate = Color.lime if on_cooldown else Color.gold
