extends Node2D

const SPEED = 60

var direction = 1
@onready var ray_cast_right_2d = $RayCastRight2D
@onready var ray_cast_left_2d = $RayCastLeft2D
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	if ray_cast_right_2d.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left_2d.is_colliding():
		direction = 1 
		animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
