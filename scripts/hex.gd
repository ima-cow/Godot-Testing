extends Sprite2D

signal lineModeOn
signal lineModeOff

func _input(event):
	if event.is_action_pressed("click") and is_pixel_opaque(get_local_mouse_position()):
		emit_signal("lineModeOn")
 
