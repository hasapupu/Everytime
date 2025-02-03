extends Node

static func writeTo(textBox:Node, text:Array, sfx: AudioStream, delay: float, ft:FontFile):
    textBox.text = ""
    textBox.add_font_override("font",ft)
    for i in text:
        for j in i:
            textBox.text += j
            get_tree().root.get_node("gameManager").playSfx(sfx)
            await get_tree().create_timer(delay).timeout
        await get_tree().create_timer(2).timeout