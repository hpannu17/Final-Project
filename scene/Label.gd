extends Label

export(NodePath) var player_path
var player
var score = 0

func _process(delta):
	player = get_node(player_path)
	set_process(true)
	score = player.get_position().y	
	update_score(score)


func update_score(s):
	
	text = 'Score: ' + str(-score)


