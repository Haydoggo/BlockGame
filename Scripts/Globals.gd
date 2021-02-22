extends Node
var tile_size := 64.0
var tick_time := 0.1

var block_res = 			preload("res://Scenes/Block.tscn")
var blocker_res = 			preload("res://Scenes/BlockerBlock.tscn")
var pusher_res = 			preload("res://Scenes/PusherBlock.tscn")
var piston_res = 			preload("res://Scenes/PistonBlock.tscn")
var power_block_res = 		preload("res://Scenes/PowerBlock.tscn")
var bolter_block_res = 		preload("res://Scenes/BolterBlock.tscn")
var conveyor_block_res = 	preload("res://Scenes/ConveyorBlock.tscn")
var magnet_block_res = 		preload("res://Scenes/MagnetBlock.tscn")

var goal_res = preload("res://Scenes/Goal.tscn")

var block_tex_res = 	preload("res://Sprites/Block.png")
var blocker_tex_res =	preload("res://Sprites/BlockerBlock.png")
var pusher_tex_res = 	preload("res://Sprites/SteamBlock.png")
var piston_tex_res = 	preload("res://Sprites/PusherBlock.png")
var power_tex_res = 	preload("res://Sprites/PowerBlock.png")
var magnet_tex_res = 	preload("res://Sprites/MagnetBlock.png")

onready var block_types = {	"Block":	{"res": block_res, 			"tex": block_tex_res, 		"name":"Block"},
							"Blocker":	{"res": blocker_res,		"tex": blocker_tex_res,		"name":"Blocker"},
							"Pusher":	{"res": pusher_res,			"tex": pusher_tex_res,	"name":"Pusher"},
							"Piston":	{"res": piston_res,			"tex": piston_tex_res,"name":"Piston"},
							"Power":	{"res": power_block_res, 	"tex": power_tex_res,	"name":"Power"},
							"Bolter":	{"res": bolter_block_res,	"tex": piston_tex_res,		"name":"Bolter"},
							"Conveyor":	{"res": conveyor_block_res,	"tex": piston_tex_res,		"name":"Conveyor"},
							"Magnet":	{"res": magnet_block_res,	"tex": magnet_tex_res,		"name":"Magnet"}}
