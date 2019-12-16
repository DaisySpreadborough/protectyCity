extends RigidBody2D

var speed = 300
var distance
var direction

func _ready():
	pass

func set_pos(posi):
	position = posi
	
func set_target(enemyPos):
	distance = (enemyPos.x - position.x) / (enemyPos.y - position.y)
	direction = Vector2(enemyPos.x - position.x, enemyPos.y - position.y)
	direction = direction.normalized()
	linear_velocity = direction * speed

