
extends Area2D




func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	print(bodies)
	for body in bodies:
		if body.name == "Player":
			var cake = get_parent().get_parent().get_parent().get_node("Player2/Player")
			cake.TakeDamage(1)
			var player = get_parent().get_parent().get_parent().get_node("SlowTime")
			player.start()
