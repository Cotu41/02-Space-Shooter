extends Node

var score: int = 0

var is_game_over := false
var charge_firing := false
var charge_ready := false
var charge_progress: float = 0.0;

func increase_score(amount: int) -> void:
	score += amount

func initiate_game_over() -> void:
	is_game_over = true

func _process(delta):
	if Input.is_action_pressed("quit"):	
		get_tree().quit()
