extends Node
#var blocks := {}
var tile_size := 64.0
var tick_time := 0.1

var block_res = 		preload("res://Scenes/Block.tscn")
var blocker_res = preload("res://Scenes/BlockerBlock.tscn")
var pusher_res = 		preload("res://Scenes/PusherBlock.tscn")
var piston_res = 		preload("res://Scenes/PistonBlock.tscn")
var power_block_res = 	preload("res://Scenes/PowerBlock.tscn")

var goal_res = preload("res://Scenes/Goal.tscn")

var block_tex_res = 	preload("res://Sprites/Block.png")
var blocker_tex_res =	preload("res://Sprites/Icon.png")
var pusher_tex_res = 	preload("res://Sprites/SteamBlock.png")
var piston_tex_res = 	preload("res://Sprites/PusherBlock.png")
var power_tex_res = 	preload("res://Sprites/PowerBlock.png")

func _ready():
	var arr = []
	var arr2 = arr.duplicate()
	print(arr)
	print(arr2)
	arr.append(3)
	print(arr)
	print(arr2)

onready var block_types = {	"Block":	{"res": block_res, 			"tex": preload("res://Sprites/Block.png"), 		"name":"Block"},
							"Blocker":	{"res": blocker_res,		"tex": preload("res://Sprites/Icon.png"),		"name":"Blocker"},
							"Pusher":	{"res": pusher_res,			"tex": preload("res://Sprites/SteamBlock.png"),	"name":"Pusher"},
							"Piston":	{"res": piston_res,			"tex": preload("res://Sprites/PusherBlock.png"),"name":"Piston"},
							"Power":	{"res": power_block_res, 	"tex": preload("res://Sprites/PowerBlock.png"),	"name":"Power"}}
