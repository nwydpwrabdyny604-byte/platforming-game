extends Node3D
@onready var right_hand=$"../../player/hands/right hand"
@onready var left_hand=$"../../player/hands/left hand"
@onready var player=$"../../player"
@export var bullet_scene:PackedScene

func add_bullet_left_hand()->void:
	var bullet=bullet_scene.instantiate()
	bullet.global_transform=left_hand.global_transform
	bullet.direction=left_hand.global_transform.basis.z.normalized()
	get_parent().add_child(bullet)

func add_bullet_right_hand()->void:
	var bullet=bullet_scene.instantiate()
	bullet.global_transform=right_hand.global_transform
	bullet.direction=right_hand.global_transform.basis.z.normalized()
	get_parent().add_child(bullet)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shooting left side"):
		add_bullet_left_hand()
	if Input.is_action_just_pressed("shooting right side"):
		add_bullet_right_hand()
	
