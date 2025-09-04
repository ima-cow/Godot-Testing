extends Node2D

@onready var start = get_child(0)
@onready var end = get_child(1)
@export var line_texture = Texture2D
@onready var generating = false

func _ready():
	end.get_child(1).visible = false
	start.set_global_position(get_parent().locate_closest_hex().global_position)
	generating = get_parent().generate_line.connect()
	get_parent().locate_closest_hex().end_point = true 

func _process():
	generate_segment()

func generate_segment():
	if generating && !get_parent().locate_cloesest_hex().end_point && !get_parent().locate_closest_hex().has_line_segment:
		var line_segment = Sprite2D.new()
		
