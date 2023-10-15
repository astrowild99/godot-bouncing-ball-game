extends Node2D
class_name Game

# region signal
signal field_exceeded
signal field_cleared
# endregion signal

# region scenes
@onready var cannon: Cannon = $Cannon
@onready var gui: Gui = $GUI
# endregion scenes

# region public vars
@export_group("tiles")
@export var field_tile_width: int = 5
@export var field_tile_height: int = 8
@export var tile_len: float = 50
@export var tile_scene: PackedScene
@export var bonus_scene: PackedScene
@export var wall_scene: PackedScene

@export_group("difficulty")
@export var value_range: int = 2 # how much more - less can the new numbers be related to the current max
@export var holes_probability: int = 2 # the fraction of probability, 1 is 1/2 and so on
@export var bonus_probability: int = 3 # one over 3 should be 
# endregion public vars

# region private vars
var current_max = 1 # starts at one, increases at every new round
var tiles_array = []
var bonus_array = [] # only filled with those having the bonus

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
	var bonus_arr = []
	for n in range(0, field_tile_width):
		# first I check for the probability
		var randn = randi()
		if (randn % bonus_probability == 0 || cannon.ai_debug):
			arr.append(0)
			bonus_arr.append(1)
		elif (randn % holes_probability == 0):
			arr.append(0)
			bonus_arr.append(0)
		else:
			# here I randomly pick the difference from the current max
			var random_delta = randi() % value_range
			var negative = randn % 2 == 0
			if negative:
				arr.append(current_max - random_delta)
			else:
				arr.append(current_max + random_delta) 
			bonus_arr.append(0)
	
	if !cannon.ai_debug:
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
		elif (bonus_arr[m] > 0):
			var bonus_tile: Bonus = bonus_scene.instantiate()
			bonus_tile.position = Vector2(limit_left)
			bonus_tile.position.x = limit_left.x + (m * tile_len)
			add_child(bonus_tile) 
			bonus_tile.init(m, 0)
			bonus_tile.bonus.connect(_on_bonus_bonus)
			bonus_array.append(bonus_tile)

# scrolls down the field by one
func scroll_field():
	for t in tiles_array:
		if t != null:
			var new_val = t.scroll(tile_len)
			if new_val >= field_tile_height:
				field_exceeded.emit()
	for b in bonus_array:
		if b != null:
			var new_bon = b.scroll(tile_len)

func clear_field():
	for t in tiles_array:
		if t != null and weakref(t).get_ref():
			t.queue_free()
	for b in bonus_array:
		if b != null and weakref(b).get_ref():
			b.queue_free()

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
	if (!cannon.ai_debug):
		generate_walls()
	generate_row()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func check_field_cleared():
	var clear_empty: bool = true
	for t in tiles_array:
		if t != null && weakref(t).get_ref(): clear_empty = false
	for b in bonus_array:
		if b != null && weakref(b).get_ref(): clear_empty = false
	if clear_empty: field_cleared.emit()

func _on_cannon_shooting_done():
	check_field_cleared()
	scroll_field()
	generate_row()
	gui.update_score(current_max)
	gui.update_balls(cannon.max_bullets)
	gui.reset_hit()
	current_max += 1

func _on_bonus_bonus():
	cannon.max_bullets += 1

func _on_field_exceeded():
	clear_field()
	current_max = 1
	cannon.max_bullets = 1
	cannon.prev_max_bullets = 1
	cannon.ai_controller.done = true
	cannon.ai_controller.needs_reset = true

func _on_cannon_hit():
	gui.add_hit()

func _on_field_cleared():
	print("field cleared!")

func _on_bonus_killer_area_entered(area):
	if area && area is Bonus:
		area.queue_free()
