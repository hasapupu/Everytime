class_name daddyMaster extends Node

signal playerButtonStoppedWriting
@onready var sfxManager: AudioStreamPlayer = get_node("venv/sfxPlayer")
var playerButtonWriting := false
@onready var playerUI: PackedScene = preload("res://nodes/sceneEnv.tscn")
@onready var loadedScene = get_node("loadedScene")
var loadedSceneNoEnv: Node2D 
var mainTextbox: RichTextLabel
signal squiggle

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
    mainTextbox = tempUI.get_node("mainTextBox")
    loadedSceneNoEnv = Node2D.new()
    loadedScene.add_child(loadedSceneNoEnv)
    loadScene("res://nodes/yScene.tscn")

func _on_timer_timeout():
    squiggle.emit()