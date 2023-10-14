extends CannonState
class_name IdleCannonState

func on_transition():
	print("going back to idle")

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
