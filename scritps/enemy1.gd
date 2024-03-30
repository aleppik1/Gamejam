extends Area2D

@export var enemy_speed = -350
@onready var animated_enemy = $texture

func _ready():
	animated_enemy.play()

func _process(delta):
	global_position.y += enemy_speed * delta
	
func _on_body_entered(body):
	body.player_dead()
	queue_free()
