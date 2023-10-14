extends Area2D
class_name Cannon

# region public vars
# angles are in degrees, moving from 0 (full right) to 180 (full left)
@export var min_angle: int = 15
@export var max_angle: int = 165

@export var radial_speed: float = 100

@export var max_bullets: int = 1 # gets updated when the user takes a +1 block
# endregion public vars
# region private vars
var state_factory: CannonStateFactory = CannonStateFactory.new(self)
var state: CannonState
# endregion private vars

# region init

func center_cannon():
	rotation_degrees = -ceil((max_angle + min_angle) / 2)

func init_state():
	state = state_factory.get_state("idle")
	pass

func _ready():
	init_state()
	center_cannon()

# endregion init

# region process

func process_input(delta):
	var expected_rotation = rotation_degrees
	if (Input.is_action_pressed("ui_left")):
		expected_rotation -= radial_speed * delta
	if (Input.is_action_pressed("ui_right")):
		expected_rotation += radial_speed * delta
	if (Input.is_action_just_pressed("ui_accept")):
		state.handle_accept_action()
	
	if (abs(expected_rotation) < max_angle && abs(expected_rotation) > min_angle):
		rotation_degrees = expected_rotation

func _process(delta):
	process_input(delta)

# endregion process
