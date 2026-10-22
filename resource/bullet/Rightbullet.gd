extends Node3D
@onready var enemy=$"."
@onready var right_hand=%"right hand"
@onready var player=$"../../player"
var bullets=preload("res://resource/bullet/bullet.tscn")
func _on_right_bullet_body_entered(body: Node3D) -> void:
	if body==enemy:
		queue_free()
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shooting right side"):
		var bullet=bullets.instantiate()
		bullet.position=player.right_hand_position
		get_parent().add_child(bullet)
