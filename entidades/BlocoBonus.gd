extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var explosao = preload("res://entidades/Explosao.tscn")
var vida = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func receber_dano(dano):
	print('Bloco bonus atingido')
	vida -= dano
	# Animação da explosão
	if vida <= 0:
		var instancia_explosao = explosao.instance()
		instancia_explosao.position = global_position
		get_tree().get_current_scene().add_child(instancia_explosao)
		queue_free()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
