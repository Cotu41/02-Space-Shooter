extends Label


func _process(delta):
	self.text = "Charge: \n" + str(GameState.charge_progress*100) + "%"
