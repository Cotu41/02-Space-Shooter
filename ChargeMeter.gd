extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var points_for_charge = 100; # phrased as "points per charge" instead of kills so we can cleanly integrate other ways to earn charge as well as ensuring it's decoupled from the Enemy class
var _point_delta = 0


func _process(delta):
	if not GameState.charge_ready:
		GameState.charge_progress = (float((GameState.score-_point_delta)/float(points_for_charge)))
		if GameState.charge_progress >= 1.0:
			GameState.charge_ready = true
			_point_delta = GameState.score
			
	


