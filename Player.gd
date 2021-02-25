extends Node2D

class_name Player

export var _laser_scene: PackedScene

func _process(delta):
	position.x = get_global_mouse_position().x;
	
	if Input.is_action_just_pressed("fire_laser"):
		var new_laser =  _laser_scene.instance() as Node2D
		new_laser.position = self.position
		self.get_parent().add_child(new_laser)
		
	if Input.is_action_just_pressed("fire_charge") and GameState.charge_ready:
		self.get_child(2)._fire()


