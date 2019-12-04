extends RigidBody2D

var jump_speed = 600
var speed = 300
var sprite

func _ready():
	_fixed_process()
	sprite = get_node("Sprite")
	

func _fixed_process():
	var left_key = Input.is_action_just_pressed("ui_left")
	var right_key = Input.is_action_just_pressed("ui_right")
	if left_key:
		set_linear_velocity(Vector2(-speed,get_linear_velocity().y))
		sprite.set_flip_h(false)
	if right_key:
		set_linear_velocity(Vector2(speed,get_linear_velocity().y))
		sprite.set_flip_h(true)
		
	if !left_key and !right_key:
		set_linear_velocity(Vector2(0,get_linear_velocity().y))
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("paddles") and get_linear_velocity().y > 0:
		set_linear_velocity(Vector2(0,-jump_speed))
