class_name daddyMaster extends Node

signal playerButtonStoppedWriting
@onready var sfxManager: AudioStreamPlayer = get_node("venv/sfxPlayer")
var playerButtonWriting := false

func playSfx(sfx: AudioStream):
    sfxManager.stream_paused = false
    sfxManager.stream = sfx
    sfxManager.playing = true

func sendPlayerWritingStoppedSignal():
    playerButtonStoppedWriting.emit()