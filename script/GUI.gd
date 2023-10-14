extends VBoxContainer
class_name Gui

# region private vars
var hits: int = 0
var score: int = 0
# endregion private vars

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_hit():
	hits += 1
	$Hits.set_text("Hits: " + str(hits))

func reset_hit():
	hits = 0
	$Hits.set_text("Hits: " + str(hits))

func update_score(p_score: int):
	score = p_score
	$Score.set_text("Score: " + str(score))
	
