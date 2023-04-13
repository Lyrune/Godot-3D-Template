extends Area


func _ready():
	pass 


func _on_simplekey_body_entered(body):
	if body.name == "Player":
		var sound = get_node_or_null("/root/Game/dading")
		if sound != null:
			sound.playing = true
		var exit = get_node_or_null("/root/Game/Level/Exit")
		if exit != null:
			exit.unlock()
			queue_free()
