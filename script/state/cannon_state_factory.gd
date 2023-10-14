class_name CannonStateFactory

var states

func _init(cannon: Cannon):
	states = {
		"idle": IdleCannonState.new(cannon),
		"shooting": ShootingCannonState.new(cannon),
		"null": CannonState.new(cannon),
	}

func get_state(state_name: String) -> CannonState:
	if states.has(state_name):
		return states.get(state_name)
	else:
		printerr("No state ", state_name, " found")
		return states.get("null")
