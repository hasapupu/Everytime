extends Sprite2D

@export var tOne: Texture2D
@export var tTwo: Texture2D
@export var unitName: String
var isChanged := false
@onready var myTime: clockCustom = get_node("clock")
@onready var myEvents : events = get_node("events")
@onready var papito: daddyMaster
var myPS: PackedScene

func _ready():
	papito = get_tree().root.get_node("gameManager")
	papito.squiggle.connect(_change_sprite)
	papito.currentRoomName = unitName 
	if papito.textReplacementBuffer.has(unitName):
		myEvents.contents = papito.textReplacementBuffer[unitName]
		papito.eventIndexes.erase(unitName)
		papito.textReplacementBuffer.erase(unitName)
	if papito.eventIndexes.has(unitName) == false:
		papito.eventIndexes[unitName] = 0
	if papito.sceneSprites.has(unitName) == false:
		papito.sceneSprites[unitName] = [tOne,tTwo]
	checkForEvent(0)
	texture = papito.sceneSprites[unitName][0]
	tOne = papito.sceneSprites[unitName][0]
	tTwo = papito.sceneSprites[unitName][1]
	myTime.tick.connect(checkForEvent)

func _change_sprite():
	if isChanged:
		texture = tOne
	else:
		texture = tTwo
	
	isChanged = !isChanged

func executeEvenctFunctions(inp: event):
	if inp.dialogueText.keys().size() > 0:
		var painTemp = inp as event
		papito._print(painTemp.dialogueText,painTemp.dialogueVoice,painTemp.dialogueDelay,painTemp.dialogueFont)
		await papito.stoppedPrinting
	if inp.replacingSprites.size() > 0:
		tOne = inp.replacingSprites[0]
		tTwo = inp.replacingSprites[1]
		papito.sceneSprites[unitName] = [tOne,tTwo]
	if inp.buttonAddPath != "":
		papito.addButton(inp.buttonAddPath)
	if inp.dictKey != "":
		papito.textReplacementBuffer[inp.dictKey] = inp.dictArr
	print(inp.recursiveEvent)
	if inp.recursiveEvent != null:
		executeEvenctFunctions(inp.recursiveEvent)
	

func checkForEvent(currentTime):
	if papito.eventIndexes[unitName] < myEvents.contents.size():
		if myEvents.contents[papito.eventIndexes[unitName]].time == currentTime:
			executeEvenctFunctions(myEvents.contents[papito.eventIndexes[unitName]])
			papito.eventIndexes[unitName] += 1
