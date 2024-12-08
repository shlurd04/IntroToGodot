extends CharacterBody2D

@export var moveSpeed : float = 100

func _physics_process(delta: float) -> void:
	velocity.x =0
	velocity.y = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
		
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
		
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
		
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
		
	velocity *= moveSpeed
		
	move_and_slide()
