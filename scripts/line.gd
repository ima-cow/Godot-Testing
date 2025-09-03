extends Node2D

@onready var start = get_child(0)
@onready var end = get_child(1)

func _ready():
	start.get_child(1).visible = false
	generate_line()

func generate_line():
	start.global_position = Vector2()
