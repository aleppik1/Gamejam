extends Node2D
var playerPos1 = Vector2(150,150)
var enemy_scene = preload("res://scenes/enemy1.tscn")
var enemy_scene2 = preload("res://scenes/enemy2.tscn")

func _on_timer_timeout():
	spawn_enemy(playerPos1)


func spawn_enemy(playerPos1):
	var randX = randf_range(0, 1280)
	var randX2 = randf_range(0, 1280)
	var enemy_instance = enemy_scene.instantiate()
	var enemy_instance2 = enemy_scene2.instantiate()
	enemy_instance.global_position = Vector2(randX, playerPos1.y + 500)
	enemy_instance2.global_position = Vector2(randX2, playerPos1.y + 650)
	add_child(enemy_instance)
	add_child(enemy_instance2)


func _on_player_player_position(playerPos):
	playerPos1 = playerPos
	
