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
@export var destroyed_ratio: float = 10.0
@export var clear_ratio: float = 1000.0
@export var loss_malus: float = -1000.0

@export_group("")
@export var max_bullets: int = 1 # gets updated when the user takes a +1 block
@export var ball_scene: PackedScene # the ball
@export var ai_debug: bool = false
# endregion public vars

# region ai
@onready var ai_controller: CannonController = $CannonController
var prev_max_bullets: int = 0 # updated via the state transitions
var current_hits: int = 0 # updated via the state transitions
var current_destroyed: int = 0 # updated via the state transition
var is_field_cleared: bool = false
var is_lost: bool = false

func update_ai_reward():
	var new_ball_reward = (float(max_bullets) - float(prev_max_bullets)) * bonus_ratio
	var tile_reward = float(current_hits) * float(hit_ratio) # using this to align with the current scores
	var destroy_reward = float(current_destroyed) * float(destroyed_ratio)
	var clear_reward = 0 if !is_field_cleared else clear_ratio
	if not is_lost:
		ai_controller.reward = new_ball_reward + tile_reward + destroy_reward + clear_reward # todo move this in the ai agent
	else:
		ai_controller.reward = loss_malus
		is_lost = false
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

func _on_tile_destroyed():
	current_destroyed += 1
# endregion events


func _on_bonus_killer_area_entered(area):
	pass

func _on_game_field_cleared():
	is_field_cleared = true

func _on_game_field_exceeded():
	is_lost = true
