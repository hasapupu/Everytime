class_name daddyMaster extends Node

@onready var sfxManager: AudioStreamPlayer = get_node("venv/sfxPlayer")

func playSfx(sfx: AudioStream):
    sfxManager.stream_paused = false
    sfxManager.stream = sfx
    sfxManager.playing = true