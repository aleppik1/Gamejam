extends Area2D

@export var EnemySpeed = 350;


func _on_body_entered(body):
	emit_signal("area_entered")
	print("Someone entered me!")
