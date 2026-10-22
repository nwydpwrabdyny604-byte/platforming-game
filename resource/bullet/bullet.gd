extends Area3D
var speed=1

func _process(delta: float) -> void:
	if visible :
		position.x += (speed*delta)
		position.z += (speed*delta)
