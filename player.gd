extends CharacterBody2D

@export var speed = 400.0

func _get_input():
	var input_direction = Input.get_axis("ui_up", "ui_down")
	velocity.y = input_direction * speed

func _physics_process(_delta):
	_get_input()
	move_and_slide()
