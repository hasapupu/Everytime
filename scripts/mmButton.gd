class_name mmButton extends Button

var responseTexts := []
var finished := false
var ogText := ""
var shouldLoop := false

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
    #writer.write()

func overrideAbleFunction():
    pass