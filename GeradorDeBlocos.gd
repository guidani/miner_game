extends Node2D


# Called when the node enters the scene tree for the first time.
#func _ready():
#	set_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var enemy = preload("res://entidades/Bloco.tscn")


func spawn_object(newXPos):
	var enemyInstance = enemy.instance()
	enemyInstance.position = Vector2(newXPos, 600+32)
	add_child(enemyInstance)
	
	$Timer.wait_time = 2.5

func _on_Timer_timeout():
#	for i in [32,96,160,224,288,352,416,480,544,608,672,736,800,864,928,992]:
#		spawn_object(i)
	spawn_object(32)
	spawn_object(96)
	spawn_object(160)
	spawn_object(224)
	spawn_object(288)
	spawn_object(352)
	spawn_object(416)
	spawn_object(480)
	spawn_object(544)
	spawn_object(608)
	spawn_object(672)
	spawn_object(736)
	spawn_object(800)
	spawn_object(864)
	spawn_object(928)
	spawn_object(992)
