extends CannonState
class_name IdleCannonState

func on_transition():
	# when I get back to idle, it means that I survived, hence I should
	# reward my agent
	cannon.update_ai_reward((cannon.max_bullets - cannon.prev_max_bullets) / 8)

func process_input(delta):
	var expected_rotation = cannon.rotation_degrees
	if (Input.is_action_pressed("ui_left")):
		expected_rotation -= cannon.radial_speed * delta
	if (Input.is_action_pressed("ui_right")):
		expected_rotation += cannon.radial_speed * delta
	if (Input.is_action_just_pressed("ui_accept")):
		cannon.state = cannon.state_factory.get_state("shooting")
	
	if (abs(expected_rotation) < cannon.max_angle && abs(expected_rotation) > cannon.min_angle):
		cannon.rotation_degrees = expected_rotation

func process_ai_input(delta, ai_controller: CannonController):
	# the ai input is handled by first reaching the angle
	# and then shooting, directly
	var movement = ai_controller.ai_best_angle
	cannon.rotation_degrees = -movement
	cannon.state = cannon.state_factory.get_state("shooting")
	print(movement)
	pass
