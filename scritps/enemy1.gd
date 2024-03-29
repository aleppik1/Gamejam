extends Area2D



func _on_body_entered(body):
	emit_signal("area_entered")
	print("Someone entered me!")
