extends Control

func _process(delta):
	if Input.is_action_pressed("jump"):
		get_tree().change_scene("res://World.tscn")
		