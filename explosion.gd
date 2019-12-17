extends StaticBody2D

var size = 0
var speed = 20
var timeElapsed = 0
var lifeTime = .5

func _ready():
	$shape.scale = Vector2(0,0)
	$Sprite.scale = Vector2(0,0)
	$Timer.start(lifeTime)

func _process(delta):
	timeElapsed += delta
	$shape.scale = Vector2(timeElapsed * speed, timeElapsed * speed)
	$Sprite.scale = Vector2(timeElapsed * speed, timeElapsed * speed)
	


func _on_Timer_timeout():
	queue_free()
