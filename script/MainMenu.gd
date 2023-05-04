extends Control


func _on_settings_pressed():
	get_tree().change_scene("res://scene/ui/Settings.tscn")

func _on_exit_pressed():
	get_tree().quit()

func _on_continue_pressed():
	pass

func _on_newgame_pressed():
	PlayerStatus.changeHealth(100)
	PlayerStatus.changeMana(100)	
	get_tree().change_scene("res://scene/level/Tutorial.tscn")

func _on_credit_pressed():
	pass # Replace with function body.
