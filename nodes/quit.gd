class_name quitButton extends mmButton

func _ready():
    myFont = preload("res://fonts/MARYJO__.ttf")
    voice = preload("res://sfx/yVoice.wav")
    responseTexts = {"Sometimes I do wonder...":1.5,"How many times were you":0, "on the verge of coming back?":0.5}

func _on_player_stopped_writing():
    get_tree().quit()