extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Munição: "+str(GlobalVariables.arma_um_municao)
