extends events

func _ready():
    contents = [
        event.new(0,{"Well, how do you like it?" : 1,"It's kinda cozy if you ask me." : 1.3, "But it does look a bit...":0.7,"Bland.":1.3,"Well, it's not like you deserve any better.":1,"Have fun haha.":1},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"","",[]),
        event.new(35,{"Huh, you're strangely invested in the abyss...":1,"I guess it must feel pretty good to finally find something as shallow as yourself.":1.5,"Welp too bad.":0.5,"It's gone now.":0.7},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/blackBG.png"),load("res://backgrounds/blackBG.png")],"","hubScene",[
            event.new(1,{"What?" : 0.5,"Are you actually mad I deleted the grand whiteness from your dimension?" : 1, "It's literally just a color change.":1,"Well, it WAS kinda the only thing that made you happy...":1.3,"It's tough randomly losing that.":1.5,"I should know.":1.3},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],""),
            event.new(40,{"STOP LOOKING AT ME LIKE THAT!":1},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/ySquirm1.png"),load("res://backgrounds/ySquirm2.png")],""),
            event.new(60,{"FINE!":1,"I'LL MAKE YOU SOME NEW 'TOYS'!":1,"AND I'LL EVEN MAKE THEM LAST FOR A LOOOOOOOOONG TIME!":1,"JUST LET ME BE!":2},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/yDepression1.png"),load("res://backgrounds/yDepression2.png")],"","planetView",[
                event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/planetBG1.png"),load("res://backgrounds/planetBG2.png")],"res://nodes/arcticButton.tscn","main",[
                    event.new(40,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"","monkScene",[
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/arcticFewPeople1.png"),load("res://backgrounds/arcticFewPeople2.png")],"")
                    ]),
                    event.new(60,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"","egyptScene",[
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertFewPeople1.png"),load("res://backgrounds/desertFewPeople2.png")],"")
                    ]),
                    event.new(70,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[],"","islandScene",[
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/islandFewPeople1.png"),load("res://backgrounds/islandFewPeople2.png")],"")
                    ]),
                    event.new(120,{}, null, 0, null, [], "", "monkScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/arcticAlottaPeople1.png"),load("res://backgrounds/arcticAlottaPeople2.png")],"")                ])
                    ]),
                    event.new(165,{}, null, 0, null, [], "", "monkScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/arcticChuddha1.png"),load("res://backgrounds/arcticChuddha2.png")],"")
                    ]),
                    event.new(180,{}, null, 0, null, [], "", "islandScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/islandAlottaPeople1.png"),load("res://backgrounds/islandAlottPeople2.png")],"")
                    ]),
                    event.new(190,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertAlottaPeople1.png"),load("res://backgrounds/desertAlottaPeople2.png")],"")
                    ]),
                    event.new(220,{}, null, 0, null, [], "", "islandScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/islandSomeShips1.png"),load("res://backgrounds/islandSomeShips2.png")],"")
                    ]),
                    event.new(230,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertSeparationFewPeople1.png"),load("res://backgrounds/desertSeparationFewPeople2.png")],"")
                    ]),
                    event.new(250,{}, null, 0, null, [], "", "islandScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/islandAlottaShips1.png"),load("res://backgrounds/islandAlottaShips2.png")],"")
                    ]),
                    event.new(270,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertSeparationAlottaPeople1.png"),load("res://backgrounds/desertSepaprationAlottaPeople2.png")],"")
                    ]),
                    event.new(300,{}, null, 0, null, [], "", "islandScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/islandGeneralFirstEver1.png"),load("res://backgrounds/islandGeneralFirstEver2.png")],"")
                    ]),
                    event.new(310,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertSeparationAlottaPeopleWeapons1.png"),load("res://backgrounds/desertSeparationAlottaPeopleWeapons2.png")],"")
                    ]),
                    event.new(340,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertBattleNoDeath1.png"),load("res://backgrounds/desertBattleNoDeath2.png")],"")
                    ]),
                    event.new(380,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertBattleFewDeath1.png"),load("res://backgrounds/desertBattleFewDeath2.png")],"")
                    ]),
                    event.new(415,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertBattleMoreDeath1.png"),load("res://backgrounds/desertBattleMoreDeath2.png")],"")
                    ]),
                    event.new(455,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertBattleAllDeath1.png"),load("res://backgrounds/desertBattleAllDeath2.png")],"")
                    ]),
                    event.new(485,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertAlGaib1.png"),load("res://backgrounds/desertAlGaib2.png")],"")
                    ]),
                    event.new(515,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertPyramidwip1.png"),load("res://backgrounds/desertPyramidwip2.png")],"")
                    ]),
                    event.new(555,{}, null, 0, null, [], "", "egyptScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/desertPyramidFin1.png"),load("res://backgrounds/desertPyramidFin2.png")],"")
                    ]),
                    event.new(556,{}, null, 0, null, [], "", "islandScene", [
                        event.new(0,{},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/islandHuffPuff1.png"),load("res://backgrounds/islandHuffPuff2.png")],"","",[],event.new(0,{"Phew,huhh,huhh" : 0.5,"GENERAL, GENERAL!":0.5,"THE GREAT FAR ISLAND!":0.5,"ITS AS IF A NEW MOUNTAIN HAS GROWN OUT THERE!":0.5},load("res://sfx/sVoice.wav"),0.05,load("res://fonts/MARYJSC_.ttf"),[],"","",[],event.new(0,{"Huh, interesting...":1,"NOTIFY THE MEN AND PREPARE MY SHIP!":1.3,"We are exploring unknown territory!":2}, load("gVoice"), 0.07, load("res://fonts/MJALTER_.ttf"),[load("res://backgrounds/islandEmptyChair1.png"),load("res://backgrounds/islandEmptyChair2.png")],"")))
                    ]),
                    event.new(560,{}, null, 0, null, [], "", "hubScene", [
                        event.new(0,{"Hey...":2,"I'm sorry.":1,"One time I'm mad at you for going away in the past,":1,"The next I'm yelling at you staying.":1.5,"What's wrong with me?":1.5},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/yShy1.png"),load("res://backgrounds/yShy2.png")],"","",[],event.new(0,{"How about we start over?":.5,"I'll try to forget the past,":1,"just...":0.5,"DON'T LEAVE ME, OK?":2,"...":2},load("res://sfx/yVoice.wav"),0.05,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/yBlush1.png"),load("res://backgrounds/yBlush2.png")],"","",[],event.new(0,{"So, howdya like the planet?":1,"Wanna show me around?":1.3},load("res://sfx/yVoice.wav"), 0.07, load("res://fonts/MARYJO__.ttf"),[],"","monkScene",[
                            event.new(0, {"Wow":1,"The creatures here are already tapping into the techniques I used to make their planet.":2,"I wonder when they will realise that we exist,":1.5,"and how it'll affect them.":1.5}, load("res://sfx/yVoice.wav"), 0.07, load("res://fonts/MARYJO__.ttf"),[],"",)

                        ]))),
                        event.new(1,{},null,0,null,[],"","islandScene", [
                            event.new(0,{"You know, I'm actually kinda proud of how this biome turned out.":1.5,"Isn't it beautiful?":1,"I'm not surprised the creatures here discovered sailing so fast.":1,"Who wouldn't want to explore these islands?":1},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/MARYJO__.ttf"),[],"",)
                        ]),
                        event.new(2,{},null,0,null,[],"","egyptScene",[
                            event.new(0,{}, null,0,null,[load("res://backgrounds/desertDiplomacy1.png"),load("res://backgrounds/desertDiplomacy1.png")],"","",[],
                                event.new(0,{"So yeah, that's pretty much what our empire is like.":2},load("res://sfx/gVoice.wav"),0.08,load("res://fonts/MJALTER_.ttf"),[],"","",[],
                                    event.new(0,{"You insolent fool.":1.5,"You come here,":1,"Disturb our peace,":1,"demand to see face to face with the leader,":1.5,"all the while referring to yourself as guests,":1.5,"JUST FOR MEANINGLESS CHATTER!?":2,"Do you people have no concept of disrespect?":1,"If you ever want to see your homes again,":1.3,"LEAVE!":1},load("res://sfx/bVoice.wav"),0.06,load("res://fonts/MARYJWI_.ttf"),[],"","",[],
                                        event.new(0,{"G-General...":2,"I--I don't think he's k-kidding.":2.2,"LET'S GET OUTTA HERE!":1},load("res://sfx/sVoice.wav"), 0.09,load("res://fonts/MARYJSC_.ttf"),[load("res://backgrounds/desertPyramidFin1.png"),load("res://backgrounds/desertPyramidFin2.png")],"","",[],
                                            event.new(0,{"What...":1,"No...":1},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/MARYJO__.ttf"),[],"","hubScene",[
                                                event.new(0,{},null,0,null,[load("res://backgrounds/yDepression1.png"),"res://backgrounds/yDepression2.png"],"","",[],
                                                    event.new(0,{"Why...":1,"Why does everything I create end in either":1,"conflict,":0.5,"war":0.5,"Or even inexplicable bloodshed...":2,"Up until now, I thought it was inherent due to them":0.3,"existing on a lower plane of reality.":1.5,"But now I'm starting to wonder,":1,"maybe it originates from MY very nature?":2,"I mean our coexistance devolved into conflict so much, it's impossible to count.":1.5,"And if it were possible, I'm sure we'd have killed eachother.":1.5,"Well, I'd have for sure...":1},load("res://sfx/yVoice.wav"),0.08,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/yShy1.png"),load("res://backgrounds/yShy2.png")],"","",[],
                                                        event.new(0,{"But now, FINALLY":0.5,"I don't feel that way.":1,"And I don't want to ever again!":2},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/MARYJO__.ttf"),[load("res://backgrounds/yBlush1.png"),load("res://backgrounds/yBlush2.png")],"","",[],
                                                            event.new(0,{"So maybe now, that I'm feeling better,":1,"they will start acting more humane too.":1.3},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/MARYJO__.ttf"),[],"")
                                                        )
                                                    )
                                                )
                                            ],
                                            event.new(0,{},null,0,null,[],"","islandScene",[
                                                event.new(0,{},null,0,null,[load("res://backgrounds/islandGeneralDiscussion1.png"),load("res://backgrounds/islandGeneralDiscussion2.png")],"","",[],
                                                    event.new(0,{"When do you plan to attack, general?":1,"It takes you but one word and I'll have the entire fleet prepared for battle...":1.5,"In just a week!":1},load("res://sfx/sVoice.wav"),0.06,load("res://fonts/MARYJSC_.ttf"),[],"","",[],
                                                        event.new(0,{"...":2,"No need for that.":1.5},load("res://sfx/gVoice.wav"),0.09,load("res://fonts/MJALTER_.ttf"),[],"","",[],
                                                            event.new(0,{"WHAT":1,"MY GENERAL, WHAT ARE YOU SAYING?":1.3,"AFTER THEY HUMILIATED YOU ON THE VERY DAY OF YOUR ARRIVAL?!":1.3},load("res://sfx/sVoice.wav"),0.06,load("res://fonts/MARYJSC_.ttf"),[],"","",[],
                                                                event.new(0,{"And why do you think that is?":1.5,"I mean, why COULD they do that?":1.3,"I'll tell ya why.":1.3,"Those... creatures.":1,"They are like rats in your ship's kitchen.":1.3,"One of them is just a hungry, barbaric little creature.":1.3,"But once they get breedin'... oh boy.":0.7,"There'll be so much of them, extermination becomes nearly impossible.":1.7,"If we tried to attack them now, we'd be gone like ship's cheese.":2,"That's why our only hope of victory is our superior intellect.":1.2,"If we want to win against vermin, we need to moke some mousetraps.":2,"Capiche?":1},load("res://sfx/gVoice.wav"),0.08,load("res://fonts/MJALTER_.ttf"),[],"","",[],
                                                                    event.new(0,{"Y-Yessir!":0.5,"We'll start gathering potential inventors to the navy's weaponry division right away!":2},load("res://sfx/sVoice.wav"),0.06,load("res://fonts/MARYJSC_.ttf"),[],"","",[],
                                                                        event.new(0,{"Good.":0.5,"Tell 'em to work as fast as possible.":1,"Right now our only protection from them is the sea.":1.5,"And who knows how fast the rats will learn how to swim.":2},load("res://sfx/gVoice.wav"),0.07,load("res://fonts/MJALTER_.ttf"),[],"")
                                                                    )
                                                                )
                                                            )
                                                        )
                                                    )
                                                )
                                            ])
                                        )
                                        )
                                    )
                                )
                            )
                        ])
                    ]),
                  
      ])])]
