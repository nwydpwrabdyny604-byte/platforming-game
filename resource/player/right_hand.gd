extends CSGMesh3D
@onready var player=$"../.."

func _process(delta: float) -> void:
	player.right_hand_position=position
