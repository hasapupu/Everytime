class_name daddyMaster extends Node

signal playerButtonStoppedWriting
@onready var sfxManager: AudioStreamPlayer = get_node("venv/sfxPlayer")
var playerButtonWriting := false
@onready var playerUI: PackedScene = preload("res://nodes/sceneEnv.tscn")
@onready var loadedScene = get_node("loadedScene")
var loadedSceneNoEnv: Node2D 
var mainTextbox: RichTextLabel
signal squiggle
var plUINode: Node2D
@onready var mainTime: clockCustom = get_node("clock")
var events := []
var eventIndexes = {}
var currentRoomName := ""
var buttons := []

func playSfx(sfx: AudioStream):
	sfxManager.stream_paused = false
	sfxManager.stream = sfx
	sfxManager.playing = true

func sendPlayerWritingStoppedSignal():
	playerButtonStoppedWriting.emit()

func loadScene(path: String):
	for i in loadedSceneNoEnv.get_children():
		i.queue_free()
	var tempS = load(path).instantiate()
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
	await get_tree().create_timer(1).timeout
	_print({"You're back?": 0.7,"What, was staring into the white void so boring you'd rather talk to me instead?": 0.7,"Can't relate.": 1},load("res://sfx/yVoice.wav"),0.07,load("res://fonts/MARYJO__.ttf"))
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

#func checkForEvent
func addButton(path: String):
	var tempB = load(path).instantiate()
	plUINode.get_children()[buttons.size()].add_child(tempB)
	buttons.append(tempB)
