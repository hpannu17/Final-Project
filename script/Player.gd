extends KinematicBody2D

var jump_speed = -475
var speed = 300
var gravity = Vector2.DOWN * 500
var velocity = Vector2()
var jump = false
var score = 0
var max_height = 0
var intscore = 0


func _physics_process(delta):
	velocity += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector2.UP)
	if jump and is_on_floor():
		velocity.y = jump_speed
	if $ScreenTest.is_on_screen() == false:
		get_tree().change_scene("res://Game Over.tscn")
	max_height = -position.y
	if max_height > score:
		score = max_height
		intscore = int(score)
		$Score.update_score(intscore)
		
func get_input():
	velocity.x = 0
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	jump = false
	if Input.is_action_just_pressed("jump"):
		jump = true