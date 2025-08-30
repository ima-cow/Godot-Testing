extends Node2D

@export var redHex = Texture2D

func _ready():
	for Area2D in get_children():
		Area2D.input_event.connect(_on_hex_input_event)

func _on_hex_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		print("click")
		var sprite = Sprite2D.new()
		sprite.texture = redHex
		add_child(sprite)
	else:
		print("hover")
