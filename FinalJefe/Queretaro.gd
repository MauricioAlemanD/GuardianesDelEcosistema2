extends Node2D

var textoCompleto = "Por el momento has soportado nuestros ataques, nos iremos temporalmente, pero volveremos, estos lugares ya son de nosotros de todos modos y no podrás hacer nada por ello. Estas tierras son para hacer negocios."
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
	UsuarioGlobal.nivelActual = "Hidalgo"
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
