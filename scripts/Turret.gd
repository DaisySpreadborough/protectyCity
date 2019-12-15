extends StaticBody2D

var rocket = preload("res://PlayerRocket.tscn")

var rocketSpeed = 30
var health = 300

func _ready():
	add_to_group("turrets")
	pass 

func _process(delta):
	pass

func fireAt(posi):
	var rt = rocket.instance()
	get_parent().add_child(rt)
	rt.set_pos(posi)
	
func hit(damage):
	if damage > health:
		destroy()
	else:
		health -= damage
	
func destroy():
	queue_free()
	pass