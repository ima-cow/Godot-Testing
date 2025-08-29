extends Node2D

signal lineModeOn
signal lineModeOff

func _input(event):
	if event.is_action_pressed("click") and childrenClicked(): 
		emit_signal("lineModeOn")
		print("clicked")
		
func childrenClicked(): 
	for hex in get_children():
		if hex.is_pixel_opaque(get_local_mouse_position()):
			return true
	return false
