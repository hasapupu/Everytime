class_name writer extends Node2D
signal finished

func writeTo(textBox:Node, text:Array, sfx: AudioStream, delay: float, ft:FontFile,gm:daddyMaster):
	textBox.add_theme_font_override("font",ft)
	for i in text:
		textBox.text = ""
		for j in i:
			textBox.text += j
			gm.playSfx(sfx)
			await textBox.get_tree().create_timer(delay).timeout
		await textBox.get_tree().create_timer(1.5).timeout
	finished.emit()
