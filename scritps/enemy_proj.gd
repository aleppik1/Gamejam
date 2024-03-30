extends Area2D


@export var projectile_speed = -300
@onready var rocket_deleter = $VisibleNotifier
func _physics_process(delta):
	global_position.y += projectile_speed*delta
	



func _on_body_entered(body):
	body.player_dead()
	queue_free()
