extends AIController2D
class_name CannonController
# the AI agent will only give me the target angle, 
# the game will trigger the shooting start when such angle is reached

@onready var cannon: Cannon = get_tree().get_root().get_node("Game/Cannon")
@onready var game: Game = get_tree().get_root().get_node("Game")

var ai_best_angle: float = 90

func _init():
	needs_reset = false # the game resets when the limit is reached

# region observations
func get_bonus_positions():
	var positions = [] # a bool matrix of found bonus
	for i in range(0, game.field_tile_width * game.field_tile_height):
		positions.append(0)
	for b in game.bonus_array:
		if (!b):
			continue
		var index = b.field_position_x + (b.field_position_y * game.field_tile_width)
		if index >= game.field_tile_height * game.field_tile_width:
			continue # here I have exceeeded the row
		positions[index] = 1
	return positions

func get_tile_positions():
	var positions = []
	for i in range(0, game.field_tile_width * game.field_tile_height):
		positions.append(0)
	for t in game.tiles_array:
		if (!t):
			continue
		var index = t.field_position_x + (t.field_position_y * game.field_tile_width)
		if index >= game.field_tile_height * game.field_tile_width:
			continue
		positions[index] = t.missing_shots
	return positions
# endregion observations

# the observations for the game are:
# - the position of all blocks, in a matrix of weights
# - the distance of the blocks from the cannon, as a vector 2
# - the number of missing balls
# - the position of the first 3 rewards, just to avoid having a huge network
func get_obs() -> Dictionary:
	# I start with the very dumb observations first, trying to maximize the reach 
	# for the bonuses
	var positions = []
	var tile_positions = get_tile_positions()
	var bonus_positions = get_bonus_positions()
	var current_rotation = cannon.rotation_degrees
	positions.append(abs(current_rotation))
	for t in tile_positions:
		positions.append(t)
	for b in bonus_positions:
		positions.append(b)
	return {"obs": positions}

func get_reward() -> float:
	return reward

func get_action_space() -> Dictionary:
	return {
		"cannon_angle" : {
			"size": 1,
			"action_type": "continuous"
		}
	}

func set_action(action) -> void:
	ai_best_angle = (action["cannon_angle"][0] * cannon.angle_scale) + 90

# overriding to avoid reset for now
func _physics_process(delta):
	pass
