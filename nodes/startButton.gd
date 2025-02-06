class_name startButton extends mmButton

func _ready():
	myFont = preload("res://fonts/MARYJO__.ttf")
	voice = preload("res://sfx/yVoice.wav")
	responseTexts = {"Every time..." : 1,"You keep" : 0,"coming back.": 1,"I always try" : 0,"to keep my" : 0,"distance." : 1,"But I fail.":1,"Every time." : 1.5}
