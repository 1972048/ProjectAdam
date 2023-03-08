tool
extends Node

class_name Equipments

onready var weapon = $Weapons

export var baseweapons : Resource

func _ready():
	weapon.initialize(baseweapons)
#	print("weapontype	: ",weapon.weapontype)
#	print("quality		: ",weapon.quality)
#	print("names		: ",weapon.names)
#	print("strenght		: ",weapon.strenght)
#	print("agility		: ",weapon.agility)
#	print("intelligence	: ",weapon.intelligence)
#	print("strreq		: ",weapon.strreq)
#	print("agireq		: ",weapon.agireq)
#	print("intreq		: ",weapon.intreq)

