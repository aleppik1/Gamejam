extends Control

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/not_final_cutscene.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_secretfunny_pressed():
	get_tree().change_scene_to_file("res://scenes/secretfunny.tscn")
