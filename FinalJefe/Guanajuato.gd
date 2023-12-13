extends Node2D

var textoCompleto = "Entiendo tu motivo noble guerrero, sin embargo, yo a quien quiero fuera de mi territorio y de mis vecinos son a aquellas industrias que explotan el lugar, no peleare más contigo."
var textoActual = ""
var indiceTexto = 0

func _ready():
	# Configura el temporizador
	$tiempoDialogo.wait_time = 0.06
	$tiempoDialogo.one_shot = false
	$tiempoDialogo.connect("timeout", self, "_on_temporizador_timeout")
	$tiempoDialogo.start()
	$btnContinuar.visible = false
	
func _on_temporizador_timeout():
	if indiceTexto < textoCompleto.length():
		# Añade un carácter al texto actual
		textoActual += textoCompleto[indiceTexto]
		$Dialogo.text = textoActual
		indiceTexto += 1
	else:
		$tiempoDialogo.stop()
		$btnContinuar.visible = true


func _on_Button_pressed():
	UsuarioGlobal.nivelActual = "Queretaro"
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")

