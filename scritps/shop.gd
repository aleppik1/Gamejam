extends Node2D

@onready var exit = $Exit

func _on_exit_body_entered(body):
	body.global_position = Vector2(50,50)
