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
													event.new(0,{"Proceed as you like, destined Hylic!":1,"Maybe my death will be the very experience guiding you to gnosis!":1},load("res://sfx/cVoice.wav"),0.07,load("res://fonts/cFont.ttf"),[load("res://backgrounds/arcticChuddhaDead1.png"),load("res://backgrounds/arcticChuddhaDead2.png")],"","egyptScene",[
														event.new(0,{},null,0,null,[load("res://backgrounds/desertDescendantDepression1.png"),load("res://backgrounds/desertDescendantDepression2.png")],""),
														event.new(10,{"So, it's done...":1,"I have finally abandoned my delusion of hope.":3,"What did he mean?":2,"Gnosis,Yaldabaeoth,Hylic...":2,"Was he crazy?":2,"Well, does it matter now?":2,"All is lost...":2,"Yaldabaeoth... a last hope?":1,"What a joke!":1,"Who, or what could save me now?":2,"Who?":1,"who...":2,"...":3},load("res://sfx/bVoice.wav"),0.08,load("res://fonts/bFont.ttf"),[load("res://backgrounds/desertDescendantEnlightenment1.png"),load("res://backgrounds/desertDescendantEnlightenment2.png")],"","",[],
															event.new(0,{"Wh-What...":2,"Wh-Who are you?":1,"A-Are you Yaldabaeoth?":2,"Please, help me!":1,"Help me!":0.5,"HELP ME!!!!!":1},load("res://sfx/bVoice.wav"),0.06,load("res://fonts/bFont.ttf"),[],"","hubScene",[
																event.new(0,{},null,0,null,[load("res://backgrounds/yShy1.png"),load("res://backgrounds/yShy2.png")],"","",[],
																	event.new(0,{"What should I do?":1,"How can something I created know something I don't?":2,"What is the Logos?":1,"What are the Hebdomas?":1,"I don't even know what Merging is!":4},load("res://sfx/yVoice.wav"),0.06,load("res://fonts/yFont.ttf"),[load("res://backgrounds/yDefault1.png"),load("res://backgrounds/yDefault2.png")],"","",[],
																		event.new(0,{"Wait, you can also create stuff, can't you?":2,"I never really thought about it, since you never created anything.":2,"Maybe if you remake this world, it won't be so evil?":2,"Well, it's worth a try!":3,"Wait, do you not know how to do it?":1},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/yFont.ttf"),[load("res://backgrounds/yBlush1.png"),load("res://backgrounds/yBlush2.png")],"","",[],
																			event.new(0,{"Don't worry.":2,"Just hold my hand!":2},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/yFont.ttf"),[],"res://nodes/endButton.tscn","",[])
																	
																		)
																	)
																)
															])
														)
													])
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
