extends Node2D

@onready var start = get_child(0)
@onready var end = get_child(1)
@export var line_texture = Texture2D

func _ready():
	end.get_child(1).visible = false
	start.set_global_position(get_parent().locate_closest_hex().global_position)
	get_parent().generate_line.connect(_on_generate_line)
	#get_parent().locate_closest_hex().set_end_point(true)

func _on_generate_line(line_being_generated):
	while !line_being_generated:
		print()
	print("test")
	#if line_being_genorated == false:
		#if !get_parent().locate_closest_hex().has_line && !get_parent().locate_closest_hex().end_point:
			#var line_segement = Sprite2D.new()
			#line_segement.set_texture(line_texture)
			#line_segement.set_global_position(get_parent().locate_closest_hex().get_global_position())
