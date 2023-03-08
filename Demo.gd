extends Node

onready var info = $CanvasLayer/GUI/StatsUI/StatsContainer/StatsRows
export var baseweaponsword : Resource
export var baseweaponbow : Resource
export var baseweaponorb : Resource
export var basestats : Resource

func _ready():
	Stats.connect("levelups", self, "levelup")
	Weapons.connect("levelups", self, "levelup")
	Stats.initialize(basestats)
	Weapons.initialize(baseweaponsword)
	statchange()
	
func levelup():
	print("level	: ",Stats.level)
	print("xp		: ",Stats.xp)
	print("xp req	: ",Stats.xpreq)
	print("Str		: ",Stats.strenght)
	print("Agi		: ",Stats.agility)
	print("Int		: ",Stats.intelligence)

func statchange():
	info.get_node("Level").get_node("HBoxContainer/Poin").text = str(Stats.level)
	info.get_node("Level").get_node("HBoxContainer2/Poin").text = str(Stats.xp)
	info.get_node("Strenght/").get_node("Point").text = str(Stats.strenght+Weapons.strenght)
	info.get_node("Agility").get_node("Point").text = str(Stats.agility+Weapons.agility)
	info.get_node("Intelligence").get_node("Point").text = str(Stats.intelligence+Weapons.intelligence)

func _process(delta):
	if (Input.is_action_just_pressed("ui_select")):
		Stats.get_xp(Stats.get_xpreq(Stats.level+1))
		statchange()
	elif (Input.is_action_just_pressed("change_weapon")):
		if(Weapons.weapontype=="Sword"):
			Weapons.initialize(baseweaponbow)
		elif(Weapons.weapontype=="Bow"):
			Weapons.initialize(baseweaponorb)
		elif(Weapons.weapontype=="Orb"):
			Weapons.initialize(baseweaponsword)
		print("Change weapon into: ",Weapons.weapontype)
		statchange()
