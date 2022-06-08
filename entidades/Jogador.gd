extends Area2D

var tiro = preload("res://entidades/Tiro1.tscn")
# var total_municao = 30
# var total_municao = GlobalVariables.arma_um_municao

var pode_atirar = true
# Called when the node enters the scene tree for the first time.
func _ready():
	self.rotate(90)
	set_process(true)


func _process(delta):
	# Faz o jogador olhar para o mouse
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("atirar") and GlobalVariables.arma_um_municao > 0:
		GlobalVariables.arma_um_municao -= 1
		# print(total_municao)
		atirar()

# Relacionado ao tiro
func instanciar_tiro(posicao):
	var instancia_tiro = tiro.instance()
	instancia_tiro.position = posicao
	get_tree().get_current_scene().add_child(instancia_tiro)
	
	
func atirar():
	var instancia_tiro = tiro.instance()
	instancia_tiro.position = get_global_position()
	get_parent().add_child(instancia_tiro)
	
