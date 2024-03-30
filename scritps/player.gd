extends CharacterBody2D
signal playerPosition
@export var speed = 400


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	
	if global_position.x > 1280:
		global_position.x = 1280;
	elif global_position.x < 0:
		global_position.x = 0;
	elif global_position.y < 80:
		global_position.y = 80;
	elif global_position.y > 10000:
		global_position.y = 2000;

func _on_player_pos_timeout():
	emit_signal("playerPosition", global_position)
