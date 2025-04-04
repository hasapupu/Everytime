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
								event.new(0,{"What have I done?":1.5,"My father!":1,"For all my life, I have been doing nothing but getting in fights with you...":1,"I was convinced...":1,"Sure even.":1,"I was so sure I understood how life worked.":2,"But I was so wrong!":1,"All the peace and happines I mistook for the nature of life...":1,"Was painfully built by your hands.":2,"Stone by stone.":5,"I know what I have to do.":2},load("res://sfx/bVoice.wav"),0.08,load("res://fonts/bFont.ttf"),[load("res://backgrounds/desertDescendantEmpty1.png"),load("res://backgrounds/desertDescendantEmpty2.png")],"","monkScene",[
									event.new(0,{},null,0,null,[load("res://backgrounds/arcticBoat1.png"),load("res://backgrounds/arcticBoat2.png")],""),
									event.new(10,{},null,0,null,[load("res://backgrounds/arcticArrival1.png"),load("res://backgrounds/arcticArrival2.png")],""),
									event.new(30,{},null,0,null,[load("res://backgrounds/arcticArrivalThreat1.png"),load("res://backgrounds/arcticArrivalThreat2.png")],"","",[],
										event.new(0,{"I know I'm making quite the intrusion, b":0},load("res://sfx/bVoice.wav"),0.07,load("res://fonts/bFont.ttf"),[],"","",[],
											event.new(0,{"You're not.":1,"In fact, I've spent all of my barely significant existance waiting for you.":2,"I am the final stepping stone you have reach to finally purify the Hebdomas.":2,"Isn't it exciting?":1,"You'll be the one to meet HER!":1,"YALDABAOTH":2,"Whatever you do, tell her that she has to merge with the logos!":2,"If she does, we might just have a chance of reaching Odoad.":2},load("res://sfx/cVoice.wav"),0.08,load("res://fonts/cFont.ttf"),[],"","",[],
												event.new(0,{"Quit your babbling!":1,"I am not in the mood for insane ramblings!":2,"I will be clear.":1,"Either you and your people support us in a war,or you die!":2},load("res://sfx/bVoice.wav"),0.06,load("res://fonts/bFont.ttf"),[],"","",[],
													event.new(0,{"Proceed as you like, destined Hylic!":1,"Maybe my death will be the very experience guiding you to gnosis!":1},load("res://sfx/cVoice.wav"),0.07,load("res://fonts/cFont.ttf"),[load("res://backgrounds/arcticChuddhaDead1.png"),load("res://backgrounds/arcticChuddhaDead2.png")],"")
												)
											)
										)
									)
								])
							])
						])
					)		
				)	
			])
		]),
	]
