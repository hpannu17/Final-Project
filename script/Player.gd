extends RigidBody2D

var jump_speed = 600
var speed = 300

func _ready():
	_fixed_process()
	
	

func _fixed_process():
	var left_key = Input.is_action_just_pressed("ui_left")
	var right_key = Input.is_action_just_pressed("ui_right")
	if left_key:
		set_linear_velocity(Vector2(-speed,get_linear_velocity().y))
	if right_key:
		set_linear_velocity(Vector2(speed,get_linear_velocity().y))
		
	if !left_key and !right_key:
		set_linear_velocity(Vector2(0,get_linear_velocity().y))

func _on_Area2D_body_entered(body):
	if body.is_in_group("paddles"):
		set_linear_velocity(Vector2(0,-jump_speed))
