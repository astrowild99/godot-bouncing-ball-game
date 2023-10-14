extends StaticBody2D
class_name Tile

@onready var missing_shot_scene: Label = $MissingShots

# region public vars

@export_group("MissingShots")
@export var missing_shots: int = 10

# endregion public vars

func print_missing_shots():
	missing_shot_scene.set_text(str(missing_shots))

# Called when the node enters the scene tree for the first time.
func _ready():
	print_missing_shots()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_hit():
	missing_shots -= 1
	print_missing_shots()
	if (missing_shots <= 0):
		queue_free()
