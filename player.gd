extends CharacterBody2D

@export var speed = 400.0

func _get_input():
	var input_direction = Input.get_axis("ui_up", "ui_down")
	velocity.y = input_direction * speed
	return velocity

func _physics_process(delta):
	move_and_collide(_get_input() * delta)
