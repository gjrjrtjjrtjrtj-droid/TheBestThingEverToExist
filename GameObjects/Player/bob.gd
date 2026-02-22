extends CharacterBody2D


const SPEED = 300.0
const acceleration = 20
const JUMP_VELOCITY = -400.0
var spawnPos = Vector2(0,0)
func _ready():
	spawnPos = position

func die():
	position = spawnPos;
	PointTracker.score -= 10;
	

func _physics_process(delta):

	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = move_toward(velocity.x, SPEED * direction, acceleration)
	else:
		if not is_on_floor():
			velocity.x = move_toward(velocity.x, 0, acceleration)
		else:
			velocity.x = move_toward(velocity.x, 0, acceleration / 8)
		
	
	move_and_slide()
	if position.y > 400:
		die()
