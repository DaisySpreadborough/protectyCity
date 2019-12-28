extends Node2D


var numTurrets = 2
var numCities = 3
var lastTurretIndex = 0

var turrets
var cities

func _ready():
	setField()
	pass

func setField():
	turrets = get_tree().get_nodes_in_group("turrets")
	cities = get_tree().get_nodes_in_group("cities")
	pass

func _input(event):
	setField()
	if event.is_action_pressed("mouse_press"):
		if get_tree().has_group("turrets"):
			if lastTurretIndex > turrets.size() - 1:
				lastTurretIndex = 0
			turrets[lastTurretIndex].fireAt(event.position)
			lastTurretIndex += 1
			spawnEnemyRocket()

func turretDestroyed():
	setField()
	
func cityDestroyed():
	setField()

func spawnEnemyRocket():
	$enemyRocketSpawner.fireAt(cities[0].position)