extends Control

signal restart

func _on_button_pressed():
	self.hide()
	restart.emit()

func _on_game_end():
	self.show()
