extends CharacterBody3D
@onready var player=$"../../player"
var player_inside=false
func _process(delta: float) -> void:
	if player_inside :
		velocity.x=(player.position.x - position.x)/(100*delta)
		velocity.z=(player.position.z - position.z)/(100*delta)
		move_and_slide()
func _on_area_3d_body_entered(body: Node3D) -> void:
	if body==player :
		player_inside=true
