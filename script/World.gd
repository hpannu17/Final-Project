extends Node2D

var platform = preload('res://scene/Platform.tscn')
var width


func _ready():
	width = get_viewport().get_visible_rect().size.x
	randomize()
	var y = 0
	while y > -3000:
		var new_platform = platform.instance()
		new_platform.set_position(Vector2(rand_range(-width/2,width/2),y))
		add_child(new_platform)
		y -= rand_range(0,200)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
