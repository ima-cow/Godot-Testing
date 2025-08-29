extends Node2D

func _ready():
	var hex = get_node("Hex")
	for Area2D in get_children():
		Area2D.input_event.connect(_on_hex_input_event)

func _on_hex_input_event(viewport, event, shape_idx):
	print("Test")
