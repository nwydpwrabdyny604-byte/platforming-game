extends Node3D
@onready var enemy=$"."
@onready var player=$"../../player"
@onready var left_hand=%"left hand"
var bullets=preload("res://resource/bullet/bullet.tscn")
func _on_left_bullet_body_entered(body: Node3D) -> void:
	if body==enemy:
		queue_free()
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shooting left side"):
		var bullet=bullets.instantiate()
		bullet.position=player.left_hand_position
		get_parent().add_child(bullet)
