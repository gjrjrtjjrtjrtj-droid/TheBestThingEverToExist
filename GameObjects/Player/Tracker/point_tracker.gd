extends Node
var score = 0;
var frozen = false;
var canWin = false;
var bonusJumps = 0;
var canShoot = true;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	if frozen: 
		return
	score -= 1

func startTimer():
	get_node("guntimer").start()
	get_node("AudioStreamPlayer").play()
func _on_guntimer_timeout():
	canShoot = true;
