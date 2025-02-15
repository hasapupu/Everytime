extends Sprite2D

@export var tOne: Texture2D
@export var tTwo: Texture2D
@export var unitName: String
var isChanged := false
@onready var myTime: clockCustom = get_node("clock")
@onready var myEvents : events = get_node("events")
@onready var papito: daddyMaster

func _ready():
	papito = get_tree().root.get_node("gameManager")
	papito.squiggle.connect(_change_sprite)
	papito.currentRoomName = unitName 
	if papito.eventIndexes.has(unitName) == false:
		papito.eventIndexes[unitName] = 0
	myTime.tick.connect(checkForEvent)

func _change_sprite():
	if isChanged:
		texture = tOne
	else:
		texture = tTwo
	
	isChanged = !isChanged

func checkForEvent(currentTime):
	if papito.eventIndexes[unitName] < myEvents.contents.size():
		if myEvents.contents[papito.eventIndexes[unitName]].time == currentTime:
			if myEvents.contents[papito.eventIndexes[unitName]].dialogueText.keys().size() > 0:
				var painTemp = myEvents.contents[papito.eventIndexes[unitName]] as event
				papito._print(painTemp.dialogueText,painTemp.dialogueVoice,painTemp.dialogueDelay,painTemp.dialogueFont)
			if myEvents.contents[papito.eventIndexes[unitName]].replacingSprites.size() > 0:
				tOne = myEvents.contents[papito.eventIndexes[unitName]].replacingSprites[0]
				tTwo = myEvents.contents[papito.eventIndexes[unitName]].replacingSprites[1]
			if myEvents.contents[papito.eventIndexes[unitName]].buttonAddPath != "":
				papito.addButton(myEvents.contents[papito.eventIndexes[unitName]].buttonAddPath)
			papito.eventIndexes[unitName] += 1
