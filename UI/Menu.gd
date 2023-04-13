extends Control

func _physics_process(delta):
	if Input.is_action_pressed("menu"):
		pass

func _on_Restart_pressed():
	get_tree().change_scene("res://Maze/Maze.tscn")
	get_tree().paused = false


func _on_Quit_pressed():
	get_tree().quit()



