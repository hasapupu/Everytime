class_name daddyMaster extends Node

signal playerButtonStoppedWriting
@onready var sfxManager: AudioStreamPlayer = get_node("venv/sfxPlayer")
@onready var musicManager: AudioStreamPlayer = get_node("venv/musicPlayer")
var playerButtonWriting := false
@onready var playerUI: PackedScene = preload("res://nodes/sceneEnv.tscn")
@onready var loadedScene = get_node("loadedScene")
var loadedSceneNoEnv: Node2D 
var mainTextbox: RichTextLabel
signal squiggle
var plUINode: Node2D
@onready var mainTime: clockCustom = get_node("clock")
var eventIndexes = {"main":0}
var currentRoomName := ""
var buttons := []
signal stoppedPrinting
var sceneSprites := {}
var textReplacementBuffer := {}
@onready var introMusic: AudioStream = preload("res://music/on the verge.wav")
@onready var mainMusic: AudioStream = preload("res://music/stuck.wav")
@onready var gameFxPlayer: AudioStreamPlayer = get_node("venv/gameFxPlayer")
@onready var droneNoise: AudioStream = preload("res://sfx/loadin.wav")
@onready var mainEvents: events = get_node("events")

func _ready():
	mainTime.tick.connect(checkForEvent)
	playMusic(introMusic)

func playSfx(sfx: AudioStream):
	sfxManager.stream_paused = false
	sfxManager.stream = sfx
	sfxManager.playing = true

func playGfx(sfx: AudioStream):
	gameFxPlayer.stream_paused = false
	gameFxPlayer.stream = sfx
	gameFxPlayer.playing = true

func playMusic(music: AudioStream):
	musicManager.stream_paused = false
	musicManager.stream = music
	musicManager.playing = true

func sendPlayerWritingStoppedSignal():
	playerButtonStoppedWriting.emit()

func loadScene(path: String):
	for i in loadedSceneNoEnv.get_children():
		i.queue_free()
	var tempS = load(path).instantiate()
	tempS.myPS = load(path)
	loadedSceneNoEnv.add_child(tempS)

func startMainLoop():
	for i in loadedScene.get_children():
		i.queue_free()
	var tempUI = playerUI.instantiate()
	loadedScene.add_child(tempUI)
	plUINode = tempUI.get_node("backGround/stageSelectNode")
	mainTextbox = tempUI.get_node("backGround/textBoxNode/mainTextBox")
	loadedSceneNoEnv = Node2D.new()
	loadedScene.add_child(loadedSceneNoEnv)
	loadScene("res://nodes/yScene.tscn")
	gameFxPlayer.stream_paused = true
	playMusic(mainMusic)
	await get_tree().create_timer(1).timeout
	_print({"You're back?": 0.7,"What, was staring into the white void alone so boring you'd rather join me instead?": 0.7,"Can't relate.": 1},load("res://sfx/yVoice.wav"),0.09,load("res://fonts/MARYJO__.ttf"))
	await get_tree().create_timer(0.5).timeout
	addButton("res://nodes/hubButton.tscn")

func _on_timer_timeout():
	squiggle.emit()

func _print(inp: Dictionary,sfx: AudioStream, delay: float, ft:FontFile):
	plUINode.visible = false
	mainTextbox.get_parent().visible = true
	var _writer = writer.new()
	_writer.finished.connect(finishPrinting)
	await _writer.writeTo(mainTextbox,inp,sfx,delay,ft,self)

func finishPrinting():
	plUINode.visible = true
	mainTextbox.text = ""
	mainTextbox.get_parent().visible = false
	stoppedPrinting.emit()

#func checkForEvent
func addButton(path: String):
	var tempB = load(path).instantiate()
	plUINode.get_children()[buttons.size()].add_child(tempB)
	buttons.append(tempB)

func checkForEvent(currentTime):
	if eventIndexes["main"] < mainEvents.contents.size():
		if mainEvents.contents[eventIndexes["main"]].time == currentTime:
			executeEventFunctions(mainEvents.contents[eventIndexes["main"]])
			eventIndexes["main"] += 1

func executeEventFunctions(inp:event):
	if inp.dialogueText.keys().size() > 0:
		var painTemp = inp as event
		_print(painTemp.dialogueText,painTemp.dialogueVoice,painTemp.dialogueDelay,painTemp.dialogueFont)
		await stoppedPrinting
	if inp.buttonAddPath != "":
		addButton(inp.buttonAddPath)
	if inp.dictKey != "":
		textReplacementBuffer[inp.dictKey] = inp.dictArr
	if inp.recursiveEvent != null:
		executeEventFunctions(inp.recursiveEvent)

func _process(delta):
	if textReplacementBuffer.has("main"):
		mainEvents.contents = textReplacementBuffer["main"]
		eventIndexes["main"] = 0
		textReplacementBuffer.erase("main")
		mainTime.reset()
