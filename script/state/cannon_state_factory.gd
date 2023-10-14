class_name CannonStateFactory

var states

func _init(cannon: Cannon):
	states = {
		"idle": IdleCannonState.new(cannon),
		"shooting": ShootingCannonState.new(cannon),
		"null": CannonState.new(cannon),
	}

func get_state(state_name: String) -> CannonState:
	var state : CannonState = states.get("null")
	if states.has(state_name):
		state = states.get(state_name)
	else:
		printerr("No state ", state_name, " found")
	state.on_transition()
	return state
