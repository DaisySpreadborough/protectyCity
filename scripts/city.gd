extends StaticBody2D

var health


func _ready():
	add_to_group("cities")
	pass


func _process(delta):
	pass

func destroy():
	get_parent().cityDestroyed()
	queue_free()