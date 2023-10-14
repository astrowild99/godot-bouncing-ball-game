extends Area2D

# angles are in degrees, moving from 0 (full right) to 180 (full left)
@export var min_angle = 15
@export var max_angle = 165

@export var radial_speed = 100

@export var max_bullets = 1 # gets updated when the user takes a +1 block

# region init

func center_cannon():
	rotation_degrees = -ceil((max_angle + min_angle) / 2)

func _ready():
	center_cannon()

# endregion init

# region process

func process_input(delta):
	var expected_rotation = rotation_degrees
	if (Input.is_action_pressed("ui_left")):
		expected_rotation -= radial_speed * delta
	if (Input.is_action_pressed("ui_right")):
		expected_rotation += radial_speed * delta
	
	if (abs(expected_rotation) < max_angle && abs(expected_rotation) > min_angle):
		rotation_degrees = expected_rotation

func _process(delta):
	process_input(delta)

# endregion process
