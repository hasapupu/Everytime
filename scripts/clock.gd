class_name clockCustom extends Node

var time := 0
signal tick(currentTime)

func _ready():
    tick.emit(0)
    calcUp()

func calcUp():
    await get_tree().create_timer(1).timeout
    time += 1
    tick.emit(time)
    calcUp()