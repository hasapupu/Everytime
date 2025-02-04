class_name mmButton extends Button

var responseTexts := []
var finished := false
var ogText := ""
var shouldLoop := false
var myFont: FontFile
var voice: AudioStream

func _on_mouse_entered():
	if shouldLoop == false:
		ogText = text
		shouldLoop = true
	hoverLoop()

func hoverLoop():
	if text == "":
		text = "_"
	else:
		text = ""
	await get_tree().create_timer(0.5).timeout
	if shouldLoop:
		hoverLoop()

func _on_mouse_exited():
	shouldLoop = false
	text = ogText

func _on_button_down():
	shouldLoop = false
	if responseTexts.size() > 0:
		var _writer = writer.new()
		await _writer.writeTo(self,responseTexts,voice,0.07,myFont,get_tree().root.get_node("gameManager"))
		await _writer.finished
	overrideAbleFunction()

func overrideAbleFunction():
	pass
