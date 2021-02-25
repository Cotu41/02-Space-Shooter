extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var _duration = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	_stopfiring()
	
	
func _fire():
	self.visible = true
	self.get_child(1).get_child(0).set_disabled(false)
	GameState.charge_firing = true
	self.get_child(2).start()
	
func _stopfiring():
	self.visible = false
	self.get_child(1).get_child(0).set_disabled(true)
	GameState.charge_firing = false
	GameState.charge_ready = false
	GameState.charge_progress = 0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
