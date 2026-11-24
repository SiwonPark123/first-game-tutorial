extends Area2D

signal player_died

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	player_died.emit()
	print("signal emitted")
	timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Engine.time_scale = 1
