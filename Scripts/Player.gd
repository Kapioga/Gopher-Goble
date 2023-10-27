extends CharacterBody2D

@onready var collision_shape_2d = $CollisionShape2D
@onready var veggie = $"../Veggie"
@onready var player = $"."

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var grabbed = false
@onready var sprite_2d = $Sprite2D

func _physics_process(delta):
	gravity_check(delta)
	jump()
	controls_dir()
	crouch()
	sprite_dir()
	move_and_slide()

func gravity_check(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		
func controls_dir():
	var direction = Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

func sprite_dir():
	#var player_turn =
	if velocity.x >= 1:
		sprite_2d.flip_h = true
	if velocity.x <= 1:
		sprite_2d.flip_h = false
	elif velocity.x == 0:
		sprite_2d.flip_h = true
		
func jump():
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

func crouch():
	if Input.is_action_just_pressed("Down") and is_on_floor():
		collision_shape_2d.scale.y = 0.2
		collision_shape_2d.position.y = -5
	elif Input.is_action_just_released("Down") and is_on_floor():
		collision_shape_2d.scale.y = 1
		collision_shape_2d.position.y = 0

func Emitgrab():
	pass


func _on_score_detect_veggie_entered(area):
	var grabbed = true
	var grab_hover = player.global_position
	if grabbed == true:
		veggie.global_position = grab_hover
	if Input.is_action_just_pressed("Space") and grabbed == true:
		grabbed = false
	#print("Touch!")
