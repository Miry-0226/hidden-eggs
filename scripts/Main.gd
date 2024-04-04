extends Node2D

var to_find = 20
signal game_end

@onready var end_menu = $EndMenu
@onready var score = $Score
@onready var cross_spawn = $CrossSpawn

@export var end_scene: PackedScene
@export var cross_scene: PackedScene

func _ready():
	end_menu.hide()
	to_find = 20

func _on_eggs_egg_found(egg_position):
	to_find-=1	
	score.text = str(to_find)
	object_found(egg_position)
	
	if to_find==0:
		game_end.emit()

func object_found(egg_position):
	var cross = cross_scene.instantiate()
	cross.position = egg_position
	cross_spawn.add_child(cross)

func _on_restart():
	to_find = 20
	score.text = str(to_find)
	cross_spawn.get_tree().call_group(&"sprites", &"free")

