extends mmButton

func _ready():
	responseTexts = {"I won't ever forget you!":2}

func _on_player_stopped_writing():
	suicide()
