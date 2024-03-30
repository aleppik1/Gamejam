extends Area2D

@export var enemy_speed = -50;

@onready var animated_enemy = $texture
@onready var projectile_node = $projectile
@onready var timer = $Timer
@onready var projectile_shoot = get_node("projectile/AudioStreamPlayer2D")
func _ready():
	animated_enemy.play()
	timer.start()
	
func _on_body_entered(body):
	emit_signal("area_entered")
	queue_free()

func shoot():
	var projectile_scene = preload("res://scenes/enemy_proj.tscn")
	var rocket_inst = projectile_scene.instantiate()
	projectile_node.add_child(rocket_inst)
	rocket_inst.global_position = global_position
	rocket_inst.global_position.y -= 80
	projectile_shoot.play()
		
	
func _on_timer_timeout():
	shoot()
