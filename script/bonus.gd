extends Area2D
class_name Bonus

signal bonus

# region private vars
var field_position_x: int = 0
var field_position_y: int = 0
# endregion private vars

func init(position_x: int, position_y: int):
	field_position_x = position_x
	field_position_y = position_y

func scroll(len: float):
	field_position_y += 1
	position.y += len

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if (body && body is Ball):
		bonus.emit()
		queue_free()
