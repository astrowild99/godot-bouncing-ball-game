extends StaticBody2D
class_name Tile

@onready var missing_shot_scene = $MissingShots

# region public vars

@export_group("MissingShots")
@export var missing_shots: int = 0

# endregion public vars

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
