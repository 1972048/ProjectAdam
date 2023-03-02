extends Node

onready var info = $CanvasLayer/GUI/StatsUI/StatsContainer/StatsRows

func _ready():
	Stats.connect("levelups", self, "aaa")
	info.get_node("Level").get_node("HBoxContainer/Poin").text = str(Stats.level)
	info.get_node("Level").get_node("HBoxContainer2/Poin").text = str(Stats.xp)
	info.get_node("Strenght/").get_node("Point").text = str(Stats.strenght)
	info.get_node("Agility").get_node("Point").text = str(Stats.agility)
	info.get_node("Intelligence").get_node("Point").text = str(Stats.intelligence)
	
func aaa(level):
	print(level)

func _process(delta):
	if (Input.is_action_just_pressed("ui_select")):
		Stats.get_xp(Stats.get_xpreq(Stats.level+1))
		info.get_node("Level").get_node("HBoxContainer/Poin").text = str(Stats.level)
		info.get_node("Level").get_node("HBoxContainer2/Poin").text = str(Stats.xp)
		info.get_node("Strenght/").get_node("Point").text = str(Stats.strenght)
		info.get_node("Agility").get_node("Point").text = str(Stats.agility)
		info.get_node("Intelligence").get_node("Point").text = str(Stats.intelligence)
