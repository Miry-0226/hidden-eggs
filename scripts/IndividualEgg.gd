extends Area2D

signal im_found(position)

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if Input.is_action_pressed("Click"):
			print(position)
			im_found.emit(position)
