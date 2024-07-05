extends CharacterBody2D

var speed = 600
@onready var ball = get_parent().find_child("Ball")

func _physics_process(delta):
	var direction = Vector2(0, _get_direction())
	velocity = direction * speed
	move_and_collide(velocity * delta)

func _get_direction():
	if abs(ball.position.y - position.y) > 0:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
