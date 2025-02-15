extends Button

@export var uName: String
@export var scenePath: String
@onready var papa: daddyMaster = get_tree().root.get_node("gameManager")

func _on_button_down():
    if papa.currentRoomName != uName:
        papa.loadScene(scenePath)