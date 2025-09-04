extends Node2D

@onready var start = get_child(0)
@onready var end = get_child(1)

func _ready():
	end.get_child(1).visible = false
	start.global_position = get_parent().locate_closest_hex().global_position
	get_parent().generate_line.connect(_on_generate_list)

func _on_generate_list(starting):
	print(starting)
