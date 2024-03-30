extends Node2D
var playerPos1 = Vector2(150,150)
var enemy_scene = preload("res://scenes/enemy1.tscn")
var enemy_scene2 = preload("res://scenes/enemy2.tscn")

func _on_timer_timeout():
	spawn_enemy1(playerPos1)
	spawn_enemy2(playerPos1)


func spawn_enemy1(playerPos1):
	var randX = randf_range(playerPos1.x-300, playerPos1.x+300)
	var enemy_instance = enemy_scene.instantiate()
	enemy_instance.global_position = Vector2(randX, playerPos1.y + 700)
	add_child(enemy_instance)

func spawn_enemy2(playerPos1):
	var randX = randf_range(0, 1280)
	var enemy_instance = enemy_scene2.instantiate()
	enemy_instance.global_position = Vector2(randX, playerPos1.y + 950)
	add_child(enemy_instance)



func _on_player_player_position(playerPos):
	playerPos1 = playerPos
	
