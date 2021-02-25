extends Node2D

var _speed: float = 200
export var points_on_death = 10

func _process(delta):
	position.y += _speed * delta


func _on_Area2D_area_entered(other_area):
	
	
	self.queue_free()
	GameState.increase_score(10) 
	
	if(other_area.get_parent() is Player):
		other_area.get_parent().queue_free()
		GameState.initiate_game_over()
		
