extends Node2D
var InfoPopupMenu
func _ready():
	InfoPopupMenu  = get_node('InfoPopupMenu')
	pass


func _on_PlayButton_pressed():
	get_tree().change_scene('res://World.tscn')
	pass 


func _on_InfoButton_pressed():
	InfoPopupMenu.show()
	pass # Replace with function body.


func _on_CloseButton_pressed():
	InfoPopupMenu.hide()
	pass