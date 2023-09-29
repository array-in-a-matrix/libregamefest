extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $animated_sprite_2d

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
	velocity *= 150
	
	move_and_slide()
	update_animation()

func update_animation():
	animated_sprite.play("idle")
