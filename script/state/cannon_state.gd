class_name CannonState

var cannon: Cannon

func _init(cannon: Cannon):
	self.cannon = cannon

# region events
# called when the transition to the current state happens
func on_transition():
	pass

# to be called for every frame
func on_process(delta):
	pass

# this is called when the shooting delay timer times out
func on_shooting_delay_timeout():
	pass

# this is called when a ball is leaving the screen
func on_ball_leaving_screen():
	pass
# endregion events

# region inputs
func process_input(delta):
	pass
# endregion inputs
