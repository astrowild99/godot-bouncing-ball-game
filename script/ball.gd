extends RigidBody2D
class_name Ball

signal leaving_screen
signal hit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_visible_on_screen_notifier_2d_screen_exited():
	leaving_screen.emit()
	queue_free()

func _on_body_entered(body):
	if (body is Tile):
		hit.emit()
		body.on_hit()


func _on_infinite_bounce_timeout_timeout():
	print("MUAHAHAH")
	linear_velocity.y += 200
