extends Area3D
var Speed=5
func _process(delta: float) -> void:
	if visible :
		position.x -= (delta*Speed)
		position.z -= (delta*Speed)
