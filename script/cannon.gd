extends Area2D
class_name Cannon

# region public vars
# angles are in degrees, moving from 0 (full right) to 180 (full left)
@export_group("mobility")
@export var min_angle: int = 15
@export var max_angle: int = 165
@export var radial_speed: float = 100

@export_group("bullet")
@onready var shooting_delay = $ShootingDelay
@export var bullet_speed = 800

@export_group("")
@export var max_bullets: int = 1 # gets updated when the user takes a +1 block
@export var ball_scene: PackedScene # the ball
var bullets: int = max_bullets # gets updated during the shooting
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

func shoot():
	print("I am shooting baby")
	var ball = ball_scene.instantiate()
	var new_ball_rotation = get_rotation()
	ball.linear_velocity = Vector2(bullet_speed, 0.0).rotated(new_ball_rotation)
	print(ball.linear_velocity)
	add_child(ball)

func _process(delta):
	state.process_input(delta)
	state.on_process(delta)

# endregion process

# region events
func _on_shooting_delay_timeout():
	state.on_shooting_delay_timeout()
# endregion events
