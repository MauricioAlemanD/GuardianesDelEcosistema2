extends Node2D

var textoCompleto = "Los axolotes solíamos vivir en armonía en estos lagos, hasta que todo cambió con la llegada de los humanos... ¡Ellos contaminaron y destruyeron todo a su paso! yo y muchos de mis amigos fuímos víctimas de su egoísmo y de sus vanidades. Yo....antes era como tú..."
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
		$EstadoMexico/Fin3.visible = true



func _on_Button_pressed():
	UsuarioGlobal.nivelActual = "Ciudad de México"
	UsuarioGlobal.guardar_progreso()
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
