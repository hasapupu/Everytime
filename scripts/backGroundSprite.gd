extends Sprite2D

@export var tOne: Texture2D
@export var tTwo: Texture2D
var isChanged := false

func _ready():
	get_tree().root.get_node("gameManager").squiggle.connect(_change_sprite)

func _change_sprite():
	if isChanged:
		texture = tOne
	else:
		texture = tTwo
	
	isChanged = !isChanged
