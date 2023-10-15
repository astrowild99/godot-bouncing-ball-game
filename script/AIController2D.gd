extends AIController2D
class_name CannonController
# the AI agent will only give me the target angle, 
# the game will trigger the shooting start when such angle is reached

@onready var cannon: Cannon = $Cannon
@onready var game: Game = get_tree().get_root().get_node("Game")

var ai_best_angle: float = 0.0

func _init():
	needs_reset = false # the game resets when the limit is reached

# region observations
func get_bonus_positions():
	# empty bonus positions are in the far right, behind
	var pos_index = 0
	var bonus_1 = Vector2(5000, 5000)
	var bonus_2 = Vector2(5000, 5000)
	var bonus_3 = Vector2(5000, 5000)
	var positions = [bonus_1, bonus_2, bonus_3]
	for b in game.bonus_array:
		if pos_index > 2:
			break
		positions[pos_index] = to_local(b.global_position)
		pos_index += 1
	return positions
# endregion observations

# the observations for the game are:
# - the position of all blocks, in a matrix of weights
# - the distance of the blocks from the cannon, as a vector 2
# - the number of missing balls
# - the position of the first 3 rewards, just to avoid having a huge network
func get_obs() -> Dictionary:
	# I start with the very dumb observations first, trying to maximize the reach 
	# for the first 3 bonus
	var balls = cannon.max_bullets
	var positions = get_bonus_positions()
	return {"obs": [
		balls,
		positions[0].x,
		positions[0].y,
		positions[1].x,
		positions[1].y,
		positions[2].x,
		positions[2].y
	]}

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
	ai_best_angle = clamp(action["cannon_angle"], 15, 165)
