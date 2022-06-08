extends Area2D

var speed = 10
var movement = Vector2()
var mouse_position = null
var poder = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	mouse_position = get_local_mouse_position()
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement = movement.move_toward(mouse_position, delta)
	movement = movement.normalized() * speed
	position = position + movement
	if position.y >= 500:
		print('Deletado')
		queue_free()


func _on_Tiro1_area_entered(area):
	if area.is_in_group("Destrutivel"):
		area.receber_dano(poder)
		queue_free()
	
	if area.name == "BlocoBonus":
		area.receber_dano(poder)
		queue_free()
