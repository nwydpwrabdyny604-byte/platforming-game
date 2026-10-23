extends Node3D

@onready var right_hand=$"../../player/right hand"
@onready var left_hand=$"../../player/left hand"
@onready var player=$"../../player"
var bullet_scene=preload("res://resource/bullet/bullet.tscn")
var bullets:Array

func add_bullet_left_hand()->void:
	var bullet=bullet_scene.instantiate()
	bullet.global_position=left_hand.global_position
	get_parent().add_child(bullet)
	bullets.append(bullet)

func add_bullet_right_hand()->void:
	var bullet=bullet_scene.instantiate()
	bullet.global_position=right_hand.global_position
	get_parent().add_child(bullet)
	bullets.append(bullet)
	
func remove_bullet()->void:
	var last_bullet=bullets.pop_back()
	get_parent().remove_child(last_bullet)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shooting left side"):
		add_bullet_left_hand()
	if Input.is_action_just_pressed("shooting right side"):
		add_bullet_right_hand()
	
func _on_bullet_body_entered(body: Node3D) -> void:
		pass
	
