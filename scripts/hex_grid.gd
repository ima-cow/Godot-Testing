extends Node2D

@export var redHex = Texture2D

func _ready():
	for hex in get_children():
		hex.input_event.connect(_on_hex_input_event)

func _on_hex_input_event(viewport, event, shape_idx):
	print(event.name)
	if event.is_action_pressed("click"):
		print("click")
		var sprite = Sprite2D.new()
		sprite.texture = redHex
		
		add_child(sprite)
	else:
		print("hover")

func locate_nearest_hex():
	var closest_hex_distance = float('inf')
	for hex in get_children():
		var distance_to_hex = get_global_mouse_position().distance_squared_to(hex.global_position)
		if distance_to_hex < closest_hex_distance:
			closest_hex_distance = distance_to_hex
