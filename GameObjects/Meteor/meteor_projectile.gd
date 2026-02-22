extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _physics_process(delta):
	move_and_slide()
	print(position)
 
func _on_area_2d_area_entered(area):
	pass # Replace with function body.


func _on_area_2d_body_entered(body):
	if body.get_name() == "Bob":
		body.die()
		
 


func _on_area_2d_2_body_entered(body):
	if body.get_name() == "Bob":
		body.velocity.y = -400.0
		PointTracker.score += 5
		queue_free()
