extends Node2D

export var _enemy_scene: PackedScene

func spawn_enemy() -> void:
	print("Spawned an enemy")
	var new_enemy = _enemy_scene.instance() as Node2D
	var rand_x  := randf()*700
	
	new_enemy.position = Vector2(rand_x, -50)
	self.add_child(new_enemy)
	
	
	


