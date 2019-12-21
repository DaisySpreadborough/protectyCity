extends RigidBody2D

var explosion = preload("res://explosion.tscn")

var speed = 300
var distance
var direction

func _ready():
	pass

func set_pos(posi):
	position = posi

func set_speed(nSpeed):
	speed = nSpeed
	
func set_target(enemyPos):
	distance = global_position.distance_to(enemyPos)
	direction = Vector2(enemyPos.x - position.x, enemyPos.y - position.y)
	direction = direction.normalized()
	linear_velocity = direction * speed
	set_time()

func set_time():
	$death.start(distance / speed)

func explode():
	var expl = explosion.instance()
	get_parent().add_child(expl)
	expl.position = global_position
	queue_free()