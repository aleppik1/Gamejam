extends Node2D

func _on_endgaming_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
