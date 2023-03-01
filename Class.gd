tool
extends Node

class_name Class

onready var stats = $Stats

export var basestats : Resource

func _ready():
	stats.initialize(basestats)
	print("level	: ",stats.level)
	print("xp		: ",stats.xp)
	print("xp req	: ",stats.xpreq)
	print("Str		: ",stats.strenght)
	print("Agi		: ",stats.agility)
	print("Int		: ",stats.intelligence)

	
func _process(delta):
	if (Input.is_action_just_pressed("ui_select")):
		stats.get_xp(5)
		print("level	: ",stats.level)
		print("xp		: ",stats.xp)
		print("xp req	: ",stats.xpreq)
		print("Str		: ",stats.strenght)
		print("Agi		: ",stats.agility)
		print("Int		: ",stats.intelligence)
