extends Node2D

@export var redHex = Texture2D

func _ready():
	for hex in get_children():
		if hex is Area2D:
			hex.input_event.connect(_on_hex_input_event)

func _on_hex_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		print("click")
	else:
		print("hover")

func locate_nearest_hex():
	var closest_hex = get_child(0)
	for hex in get_children():
		if get_global_mouse_position().distance_squared_to(hex.global_position) < get_global_mouse_position().distance_squared_to(closest_hex.global_position):
			closest_hex = hex
	return closest_hex
	
#func generate_line():
		
