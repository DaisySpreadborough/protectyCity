extends Node2D

var numTurrets = 2
var numCities = 3

func _ready():
	setField()
	pass

func setField():
	pass

func _input(event):
	if event.is_action_pressed("mouse_press"):
		get_tree().call_group("turrets", "fireAt", event.position)