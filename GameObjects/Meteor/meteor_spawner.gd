extends Node2D
var meteor = load("res://GameObjects/Meteor/MeteorProjectile.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var rng = RandomNumberGenerator.new()
	if (rng.randi_range(1,5) >= 4):
		return
	print("Meteor spawned")
	var trueMeteor = meteor.instantiate()
	trueMeteor.velocity = Vector2(rng.randf_range(-200,200),rng.randf_range(100,500))
	add_child(trueMeteor)
	
