class_name mmButton extends Button

var responseTexts := {}
var finished := false
var ogText := ""
var shouldLoop := false
var myFont: FontFile
var voice: AudioStream
@onready var papa: daddyMaster = get_tree().root.get_node("gameManager")


func _on_mouse_entered():
	if papa.playerButtonWriting == true:
		await papa.playerButtonStoppedWriting
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
	if papa.playerButtonWriting == true:
		await papa.playerButtonStoppedWriting
	shouldLoop = false
	text = ogText

func _on_button_down():
	if papa.playerButtonWriting == false:
		pressedImmediately()
		papa.playerButtonStoppedWriting.connect(_on_player_stopped_writing)
		papa.playerButtonWriting = true
		shouldLoop = false
		if responseTexts.keys().size() > 0:
			var _writer = writer.new()
			_writer.finished.connect(_writing_stopped)
			await _writer.writeTo(self,responseTexts,voice,0.07,myFont,papa)
			

func _on_player_stopped_writing():
	print("not overwritten")

func _writing_stopped():
	papa.sendPlayerWritingStoppedSignal()
	papa.playerButtonWriting = false

func pressedImmediately():
	pass