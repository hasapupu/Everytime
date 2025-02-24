class_name startButton extends mmButton

@onready var fadeRect: ColorRect = get_parent().get_node("fade")
@onready var psParent = get_parent().get_node("Node")

func _ready():
	myFont = preload("res://fonts/MARYJO__.ttf")
	voice = preload("res://sfx/yVoice.wav")
	responseTexts = {"Every time..." : 1,"You keep" : 0,"coming back.": 1,"I always try" : 0,"to keep my" : 0,"distance." : 1,"But I fail.":1,"Every time." : 1.5}

func pressedImmediately():
	papa.playGfx(papa.droneNoise)
	var tweenLength: float = 0
	for i in responseTexts.keys():
		tweenLength += responseTexts[i]
		tweenLength += i.length() * 0.07
	for i in psParent.get_children():
		get_tree().create_tween().tween_property(i,"speed_scale",8,tweenLength + 3)
	get_tree().create_tween().tween_property(fadeRect,"color:a",1,tweenLength + 3)

func _on_player_stopped_writing():
	papa.startMainLoop()