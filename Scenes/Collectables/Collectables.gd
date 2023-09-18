extends Node2D


var Cherry = preload("res://Scenes/Collectables/cherry.tscn")

func _on_timer_timeout():
	var cherryTemp = Cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var ranint = rng.randf_range(17,488)
	cherryTemp.position = Vector2(ranint,288)
	#add_child(cherryTemp)
	get_node("Node2D").add_child(cherryTemp)
