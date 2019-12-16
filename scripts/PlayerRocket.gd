extends RigidBody2D

var speed = 300
var distance
var direction

func _ready():
	pass

func set_pos(posi):
	position = posi
	
func set_target(enemyPos):
	distance = global_position.distance_to(enemyPos)
	direction = Vector2(enemyPos.x - position.x, enemyPos.y - position.y)
	direction = direction.normalized()
	linear_velocity = direction * speed
	set_time()

func set_time():
	$death.start(distance / speed)

func explode():
	queue_free()