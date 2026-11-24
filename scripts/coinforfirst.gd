extends "res://scripts/coin.gd"

@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_score()
	animation_player.play("pickup")
