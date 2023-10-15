extends AIController2D
class_name CannonController
# the AI agent will only give me the target angle, 
# the game will trigger the shooting start when such angle is reached

var ai_best_angle: float = 0.0

func _init():
	needs_reset = false # the game resets when the limit is reached

# the observations for the game are:
# - the position of all blocks, in a matrix of weights
# - the distance of the blocks from the cannon, as a vector 2
# - the number of missing balls
# - the position of the first 3 rewards, just to avoid having a huge network
func get_obs() -> Dictionary:
	return {"obs": []}

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
