extends Area

var locked = true

func _ready():
	$Light.light_color = Color(1,0,0,1)

func unlock():
	locked = false
	$Light.light_color = Color(0,1,0,1)

func _on_Exit_body_entered(body):
	if body.name == "Player" and not locked:
		var _scene = get_tree().change_scene("res://UI/Win.tscn")
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		var sound = get_node_or_null("/root/Game/You Win")
		if sound != null:
			sound.playing = true
