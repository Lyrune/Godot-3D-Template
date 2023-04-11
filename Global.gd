extends Node

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		var Pause_Menu = get_node_or_null("/root/Game/Menu")
		if Pause_Menu == null:
			get_tree().quit()
		else:
			if get_tree().paused == true:
				Pause_Menu.hide()
				get_tree().paused = false
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			else:
				Pause_Menu.show()
				get_tree().paused = true
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
