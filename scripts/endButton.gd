extends Button

var daddy: daddyMaster = get_tree().root.get_node("gameManager")

func _on_button_down():
	disabled = true
	daddy.executeEventFunctions(
		event.new(0,{},null,0,null,[load("res://backgrounds/yDefaultReach1.png"),load("res://backgrounds/yDefaultReach2.png")],"","",[],
			event.new(0,{"It worked!":1,"Finally, a true paradise!":2,"And finally, it's been confirmed that you ARE good!":2,"Now I know...":2,"You'll never leave me!":2},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/yFont.ttf"),[],"","",[],
				event.new(0,{"":99999999},null,999999999,load("res://fonts/yFont.ttf"),[],"")		
			)
		)
	)

	await get_tree().create_timer(10).timeout
	daddy.addButton("res://nodes/finalButton.tscn")

