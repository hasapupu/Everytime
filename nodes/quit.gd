class_name quitButton extends mmButton

func _ready():
    myFont = preload("res://fonts/MARYJO__.ttf")
    voice = preload("res://sfx/yVoice.wav")


func overrideAbleFunction():
    get_tree().quit()