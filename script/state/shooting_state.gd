extends CannonState
class_name ShootingCannonState

func on_transition():
	print("shooting")
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
	if (ai_controller.reward > 0):
		print("REWARD")
		print(ai_controller.reward)
