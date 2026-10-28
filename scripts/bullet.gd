extends Area3D
var Speed:float=20
var direction:Vector3=Vector3.ZERO
func _process(delta: float) -> void:
	if visible :
		global_position += -(direction)*Speed*delta


func _on_body_entered(body: Node3D) -> void:
	queue_free()


func _on_timer_timeout() -> void:
	queue_free()
