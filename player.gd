extends CharacterBody2D

class_name Bird

@export var gravity = 900.0
@export var jump_force = -300.0


var max_speed = 400

func _ready():
	velocity = Vector2.ZERO
	
func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		jump()
	
	velocity.y += gravity * delta
	
	velocity.y = min(velocity.y, max_speed)
	
	move_and_collide(velocity * delta)
		
func jump():
	velocity.y = jump_force
	
