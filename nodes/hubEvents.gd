extends events

func _ready():
    contents = [
        event.new(30,{"You're still here?":1,"Wow, you've got some nerve.":1,"Well, I can't really stop you from staying...":1,"But I sure as hell don't want you here!": 2,"You know what?": 0.5,"Let's strike a deal.": 1,"I'll give you your own dimension.": 1,"That way you can get whatever you want from coming to my reality,":0.7,"And I don't have to entertain you.": 1,"You down?": 1,"Well, you better be.": 1,"Cuz you're not getting another word outta me, that's for sure!": 1.5},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"res://nodes/planetButton.tscn","",[])]
