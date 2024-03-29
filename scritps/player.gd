extends CharacterBody2D

@export var speed = 400


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	
	move_and_slide()
	print(global_position.x, " and ", global_position.y)
	if global_position.x > 1280:
		global_position.x = 1280;
	elif global_position.x < 0:
		global_position.x = 0;
	elif global_position.y < 40:
		global_position.y = 40;
	elif global_position.y > 2500:
		global_position.y = 2000;
