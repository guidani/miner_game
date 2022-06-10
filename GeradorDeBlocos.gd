extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var enemy = preload("res://entidades/Bloco.tscn")

func _ready():
	pass
#	set_process(true)

func spawn_object(newXPos):
	var enemyInstance = enemy.instance()
	enemyInstance.position = Vector2(newXPos, 600+32)
	add_child(enemyInstance)
	
	$Timer.wait_time = 1

func _on_Timer_timeout():
	for i in [160,224,288,352,416,480,544,608,672,736,800,864]:
		spawn_object(i)
