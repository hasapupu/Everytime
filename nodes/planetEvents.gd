extends events

func _ready():
    contents = [event.new(1,{"Well, how do you like it?" : 1,"It's kinda cozy if you ask me." : 1.3, "But it does look a bit...":0.7,"Bland.":1.3,"Well, it's not like you deserve any better.":1,"Have fun haha.":1},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"","",[]),event.new(35,{"Huh, you're strangely invested in the abyss...":1,"I guess it must feel pretty good to finally find something as shallow as yourself.":1.5,"Welp too bad.":0.5,"It's gone now.":0.7},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/blackBG.png"),load("res://backgrounds/blackBG.png")],"","hubScene",[event.new(1,{"What?" : 0.5,"Are you actually mad I deleted the grand whiteness from your dimension?" : 1, "It's literally just a color change.":1,"Well, it WAS kinda the only thing that made you happy...":1.3,"It's tough randomly losing that.":1.5,"I should know.":1.3},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],""),event.new(40,{"STOP LOOKING AT ME LIKE THAT!:":1},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"")])]