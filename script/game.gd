extends Node2D
class_name Game

# region signal
signal field_exceeded
# endregion signal

# region scenes
@onready var cannon: Cannon = $Cannon
# endregion scenes

# region public vars
@export_group("tiles")
@export var field_tile_width: int = 5
@export var field_tile_height: int = 10
@export var tile_len: float = 50
@export var tile_scene: PackedScene
@export var wall_scene: PackedScene

@export_group("difficulty")
@export var holes_probabilty: int = 2 # the fraction of probability, 1 is 1/2 and so on
# todo add bonus probability
# endregion public vars

# region private vars
var current_max = 1 # starts at one, increases at every new round
var tiles_array = []

var field_top_height: int
# endregion private vars

# region field generation
func check_generated_row_is_not_empty(arr: Array):
	var empty = true
	for i in arr:
		if (i != 0):
			empty = false
	if empty == true:
		arr[1] = randi() % (current_max + 1) # bit hardcoded here

func generate_row():
	# first I define an array with the tiles to be created
	var arr = []
	for n in range(0, field_tile_width):
		# first I check for the probability
		if (randi() % holes_probabilty == 0):
			arr.append(0)
		else:
			arr.append(randi() % (current_max + 1)) # this random is not so random
	
	check_generated_row_is_not_empty(arr)
	
	# then I handle the distance
	var center = Vector2(cannon.position.x, field_top_height)
	var limit_left = Vector2(center)
	limit_left.x = limit_left.x - ((field_tile_width / 2) * tile_len)
	for m in range(0, field_tile_width):
		if (arr[m] > 0):
			var tile: Tile = tile_scene.instantiate()
			tile.position = Vector2(limit_left)
			tile.position.x = limit_left.x + (m * tile_len)
			add_child(tile)
			tile.init(arr[m], m, 0)
			tiles_array.append(tile)

# scrolls down the field by one
func scroll_field():
	for t in tiles_array:
		if t != null:
			t.scroll(tile_len)

func generate_walls():
	var top_wall: Wall = wall_scene.instantiate()
	top_wall.position.y = field_top_height - (1.5 * tile_len)
	top_wall.position.x = cannon.position.x
	add_child(top_wall)
	var left_wall: Wall = wall_scene.instantiate()
	left_wall.position.y = (get_viewport_rect().size.y + field_top_height) / 2
	left_wall.position.x = cannon.position.x - ((field_tile_width / 2) * tile_len) - tile_len
	left_wall.rotation = PI/2
	add_child(left_wall)
	var right_wall: Wall = wall_scene.instantiate()
	right_wall.position.y = (get_viewport_rect().size.y + field_top_height) / 2
	right_wall.position.x = cannon.position.x + ((field_tile_width / 2) * tile_len) + tile_len
	right_wall.rotation = PI/2
	add_child(right_wall)
# endregion field generation

# Called when the node enters the scene tree for the first time.
func _ready():
	field_top_height = cannon.position.y - (tile_len * field_tile_height)
	generate_walls()
	generate_row()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cannon_shooting_done():
	scroll_field()
	generate_row()
	current_max += 1
