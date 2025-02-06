class_name writer extends Node2D
signal finished

func writeTo(textBox:Node, text:Dictionary, sfx: AudioStream, delay: float, ft:FontFile,gm:daddyMaster):
	textBox.add_theme_font_override("font",ft)
	for i in text.keys():
		textBox.text = ""
		for j in i:
			textBox.text += j
			gm.playSfx(sfx)
			await textBox.get_tree().create_timer(delay).timeout
		await textBox.get_tree().create_timer(text[i]).timeout
	finished.emit()

