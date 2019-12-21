extends Position2D

var rocket = preload("res://enemyRocket.tscn")

var rocketSpeed = 30

func _ready():
	pass 

#func _process(delta):
#	pass

func fireAt(posi):
	randomize_pos()
	var rt = rocket.instance()
	get_parent().add_child(rt)
	
	rt.set_pos(Vector2(position.x, position.y - 15))
	rt.set_speed(rocketSpeed)
	rt.set_target(posi)
	
func randomize_pos():
	pass