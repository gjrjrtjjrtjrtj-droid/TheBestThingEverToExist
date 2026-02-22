extends StaticBody2D
var startingpos = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	startingpos = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _physics_process(delta):
	var rng = RandomNumberGenerator.new()
	position = Vector2(startingpos.x + rng.randf_range(-10,10), startingpos.y)
