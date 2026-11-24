extends Node

var coins = 0
@onready var score: Label = $"../Labels/Score"

func add_score():
	coins += 1
	score.text = "You have collected " + str(coins) + "/4 coins!"
