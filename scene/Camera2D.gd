extends Camera2D
export(NodePath) var player_path
var player

func _ready():
	player = get_node(player_path)
	set_process(true)
	
func _process(delta):
	var player_y = player.get_position().y
	if player_y< get_position().y:
		set_position(Vector2(0,player_y))
	
	pass
	