extends Label

func _process(delta):
	self.text = "Score: \n" + str(GameState.score)
