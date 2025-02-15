class_name event extends Node

var time: int
var dialogueText: Dictionary
var dialogueVoice: AudioStream
var dialogueDelay: float
var dialogueFont: FontFile
var replacingSprites: Array
var buttonAddPath: String

func _init(initTime: int,initText:Dictionary,initVoice:AudioStream,initDelay:float,initFont:FontFile,initSprites:Array,initButton: String):
    time = initTime
    dialogueText = initText
    dialogueVoice = initVoice
    dialogueDelay = initDelay
    dialogueFont = initFont
    replacingSprites = initSprites
    buttonAddPath = initButton