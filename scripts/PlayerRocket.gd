extends RigidBody2D

var speed = 300
var direction

func _ready():
	pass

func set_pos(posi):
	position = posi
	
func set_target(enemyPos):
	direction = Vector2(position.x - enemyPos.x, position.y - enemyPos.y)
	direction = direction.normalized()
	add_force(Vector2(0,0), -(direction * speed))

