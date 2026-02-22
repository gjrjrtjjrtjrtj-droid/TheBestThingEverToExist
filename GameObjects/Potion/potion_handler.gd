extends Node2D
var potions;
var potion;
var potionSpawnPoints = []
# Called when the node enters the scene tree for the first time.
func _ready():
	potion = load("res://GameObjects/Potion/Potion.tscn")
	respawnPotion()

func respawnPotion():
	potionSpawnPoints = get_children()
	var rng = RandomNumberGenerator.new()
	var spawnPoint = potionSpawnPoints[rng.randi_range(0,len(potionSpawnPoints) - 1)]
	if potions != null:
		potions.queue_free()
	var truePotion = potion.instantiate()
	truePotion.position = spawnPoint.position
	add_child(truePotion)
	potions = truePotion
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
