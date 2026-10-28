extends Node3D

@onready var right_hand=$"../../player/right hand"
@onready var left_hand=$"../../player/left hand"
@onready var player=$"../../player"
var bullet_scene=preload("res://resource/bullet/bullet.tscn")

func add_bullet_left_hand()->void:
	var bullet=bullet_scene.instantiate()
	bullet.global_transform=left_hand.global_transform
	get_parent().add_child(bullet)

func add_bullet_right_hand()->void:
	var bullet=bullet_scene.instantiate()
	bullet.global_transform=right_hand.global_transform
	get_parent().add_child(bullet)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shooting left side"):
		add_bullet_left_hand()
	if Input.is_action_just_pressed("shooting right side"):
		add_bullet_right_hand()
	
