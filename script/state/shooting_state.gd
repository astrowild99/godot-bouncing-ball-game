extends CannonState
class_name ShootingCannonState

func on_transition():
	cannon.prev_max_bullets = cannon.max_bullets
	cannon.current_hits = 0
	print("--- shooting --- " + str(cannon.prev_max_bullets))
	if (cannon.ai_debug):
		cannon.bullets = 1
		cannon.bullets_on_screen = 1
	else:
		cannon.bullets = cannon.max_bullets
		cannon.bullets_on_screen = cannon.max_bullets
	cannon.shooting_delay.start()

func on_shooting_delay_timeout():
	if (cannon.bullets > 0):
		cannon.shoot()
		cannon.bullets -= 1
		cannon.shooting_delay.start()
	else:
		cannon.bullets = cannon.max_bullets

func on_ball_leaving_screen():
	cannon.bullets_on_screen -= 1
	if (cannon.bullets_on_screen <= 0):
		cannon.shooting_done.emit()
		cannon.state = cannon.state_factory.get_state("idle")

func process_ai_input(delta, ai_controller: CannonController):
	pass
