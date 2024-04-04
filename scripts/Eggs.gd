extends Node2D

signal egg_found(egg_position)
var eggs_found = []

func _on_egg_im_found(new_egg_position):
	for egg_position in eggs_found:
		if egg_position == new_egg_position:
			return 
			
	eggs_found.append(new_egg_position)
	egg_found.emit(new_egg_position)
	print("egg in position ", new_egg_position, " found!")

func _on_game_end():
	eggs_found = [] 
