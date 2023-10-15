extends Area2D
class_name Cannon

# region signal
signal shooting_done # emit when I am done with shooting and going back to idle
signal hit # when a ball hit something
# endregion signal

# region public vars
# angles are in degrees, moving from 0 (full right) to 180 (full left)
@export_group("mobility")
@export var min_angle: int = 15
@export var max_angle: int = 165
@export var radial_speed: float = 100
var angle_scale: float = 0.0

@export_group("bullet")
@onready var shooting_delay = $ShootingDelay
@export var bullet_speed = 800

@export_group("ai")
@export var bonus_ratio: float = 8.0
@export var hit_ratio: float = 5.0

@export_group("")
@export var max_bullets: int = 1 # gets updated when the user takes a +1 block
@export var ball_scene: PackedScene # the ball
@export var ai_debug: bool = false
# endregion public vars

# region ai
@onready var ai_controller: CannonController = $CannonController
var prev_max_bullets: int = 0 # updated via the state transitions
var current_hits: int = 0 # updated via the state transitions

func update_ai_reward():
	var new_ball_reward = (float(max_bullets) - float(prev_max_bullets)) / bonus_ratio
	var tile_reward = float(current_hits) / (hit_ratio * float(prev_max_bullets)) # using this to align with the current scores
	ai_controller.reward = new_ball_reward + tile_reward # todo move this in the ai agent
	print("reward: " + str(ai_controller.reward))
# endregion ai

# region private vars
var state_factory: CannonStateFactory = CannonStateFactory.new(self)
var state: CannonState

var bullets: int = max_bullets # gets updated during the shooting

# every time I enter the shooting state, I set this as the current number of playing 
# balls
# every time a ball leaves the screen I decrease this until it is one
var bullets_on_screen: int = 0
# endregion private vars

# region init

func center_cannon():
	rotation_degrees = -ceil((max_angle + min_angle) / 2)

func init_state():
	state = state_factory.get_state("idle")
	pass

func _ready():
	center_cannon()
	init_state()
	angle_scale = (max_angle - min_angle) / 2
	ai_controller.init(self)

# endregion init

# region process

func shoot():
	var ball: Ball = ball_scene.instantiate()
	var new_ball_rotation = get_rotation()
	ball.linear_velocity = Vector2(bullet_speed, 0.0).rotated(new_ball_rotation)
	add_child(ball)
	ball.leaving_screen.connect(_on_ball_leaving_screen)
	ball.hit.connect(_on_ball_hit)

func _process(delta):
	if (!ai_controller || ai_controller.heuristic == "human"):
		state.process_input(delta)
	else:
		state.process_ai_input(delta, ai_controller)
	state.on_process(delta)

# endregion process

# region events
func _on_shooting_delay_timeout():
	state.on_shooting_delay_timeout()

func _on_ball_leaving_screen():
	state.on_ball_leaving_screen()

func _on_ball_hit():
	current_hits += 1
	hit.emit()
# endregion events


func _on_bonus_killer_area_entered(area):
	pass
