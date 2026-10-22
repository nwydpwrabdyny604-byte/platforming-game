extends CSGMesh3D
@onready var player=$"../.."

func _process(delta: float) -> void:
	player.left_hand_position=position
