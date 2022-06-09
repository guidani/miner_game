extends Area2D

var explosao = preload("res://entidades/Explosao.tscn")
var vida = 1
var speed = 25
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	#add_to_group("Destrutivel")
	set_process(true)

func receber_dano(dano):
	vida -= dano
	# Animação da explosão
	if vida <= 0:
		var instancia_explosao = explosao.instance()
		instancia_explosao.position = global_position
		get_tree().get_current_scene().add_child(instancia_explosao)
		queue_free()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= speed * delta
	# print(get_viewport_rect().size.y)
	if position.y <= 0:
		queue_free()
