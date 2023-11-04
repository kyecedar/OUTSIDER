@tool
extends Node

@export var test : bool = true : set = set_test, get = get_test

static var _test : bool = true
static var loaded : bool = false ## If game has already been initialized.

func _ready() -> void:
	if game.loaded:
		set_process(false)
		return
	
	# TODO: load configs.
	
	print("Game initialized.")
	
	game.loaded = true

func _process(delta: float) -> void:
	pass


#region // 󰫧 SETTERS.

func set_test(value: bool) -> void:
	game._test = value

#endregion 󰫧 SETTERS.


#region // 󰫧 GETTERS.

func get_test() -> bool:
	return game._test

#endregion 󰫧 GETTERS.
