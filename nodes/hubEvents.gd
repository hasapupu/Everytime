extends events

func _ready():
    contents = [event.new(50,{"You're still here?":0.5,"What do you want from me?":1,"Will you leave if I give you your own dimiension?":2,"Well you better, cuz I'm done entertaining you!": 0.5},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/MARYJO__.ttf"),[])]