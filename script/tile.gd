extends StaticBody2D
class_name Tile

# region signal
signal destroyed
# endregion signal

@onready var missing_shot_scene: Label = $MissingShots

# region public vars

@export_group("MissingShots")
@export var missing_shots: int = 10

# endregion public vars

# region private vars
var field_position_x: int = 0
var field_position_y: int = 0
# endregion private vars

func print_missing_shots():
	missing_shot_scene.set_text(str(missing_shots))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func init(shots: int, position_x: int, position_y: int):
	missing_shots = shots
	field_position_x = position_x
	field_position_y = position_y
	print_missing_shots()

func scroll(len: float) -> int:
	field_position_y += 1
	position.y += len
	return field_position_y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_hit():
	missing_shots -= 1
	print_missing_shots()
	if (missing_shots <= 0):
		destroyed.emit()
		queue_free()
