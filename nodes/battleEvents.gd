extends events

func _ready():
	contents = [
		event.new(10,{},null,0,null,[load("res://backgrounds/battleFieldLilBoat1.png"),load("res://backgrounds/battleFieldLilBoat2.png")],""),
		event.new(20,{},null,0,null,[load("res://backgrounds/battleFieldLilBoatBoom1.png"),load("res://backgrounds/battleFieldLilBoatBoom2.png")],""),
		event.new(23,{},null,0,null,[load("res://backgrounds/battleFieldDef1.png"),load("res://backgrounds/battleFieldDef2.png")],"","islandScene",[
			event.new(0,{"Oh my,granddad,do I have the news for you!":1,"We just detected one of your seamines going off...":1.5,"Looks like those savages finally managed to put together a pathetic little raft!":2,"And guess who were the first to BEG me to send out the juggernaut?":1.5,"Thats right, the very same people who protested your martial policies!":2,"You should have seen their faces!":1,"The disrestpectful savages won't pose a threat any longer!":2},load("res://sfx/gVoice.wav"),0.08,load("res://fonts/gFont.ttf"),[],"","egyptScene",[
				event.new(0,{},null,0,null,[load("res://backgrounds/desertDescendantNews1.png"),load("res://backgrounds/desertDescendantNews2.png")],"","",[],
					event.new(0,{"Babel!":1,"The ship!":1,"It went up in flames!":1,"Your dad!":1,"He was right!":2,"We must send the army!":1,"NOW!":1},load("res://sfx/sVoice.wav"),0.05,load("res://sfx/sFont.ttf"),[],"","",[],
						event.new(0,{"No...":3},load("res://sfx/bVoice.wav"),0.07,load("res://fonts/bFont.ttf"),[load("res://backgrounds/desertDescendantAlone1.png"),load("res://backgrounds/desertDescendantAlone2.png")],"","battleScene",[
							event.new(0,{},null,0,null,[load("res://backgrounds/battleFieldBigBoatShowUp1.png"),load("res://backgrounds/battleFieldBigBoatShowUp2.png")],""),
							event.new(5,{},null,0,null,[load("res://backgrounds/battleFieldBigBoatShowBoom1.png"),load("res://backgrounds/battleFieldBigBoatShowBoom2.png")],"","egyptScene",[
								#ide fog jonni a followup
							])
						])
					)		
				)	
			])
		]),
	]
