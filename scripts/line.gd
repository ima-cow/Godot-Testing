extends Node2D

func _ready():
	for node in get_children():
		if node is Area2D:
			node.get_child(1).visible = false
