extends CharacterBody2D

func _physics_process(delta):
	velocity = Vector2()
	if Input.is_key_pressed(KEY_A) || Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_W) || Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_S) || Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
	if Input.is_key_pressed(KEY_D) || Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
	velocity *= 300
	
	move_and_slide()
