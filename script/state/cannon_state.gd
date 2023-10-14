class_name CannonState

var cannon: Cannon

func _init(cannon: Cannon):
	self.cannon = cannon

# to be extended to choose what to do when the user presses shoot
func handle_accept_action():
	pass

# to be called for every frame
func on_process(delta):
	pass
