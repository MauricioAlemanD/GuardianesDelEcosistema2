extends Node2D

var textoCompleto = "Diablos, no sé en que estaba pensando para tratar de esa manera a las personas y talar a tantos árboles, de verdad te agradezco y espero que logres mejorar la zona centro del país."
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
	UsuarioGlobal.nivelActual = "Tlaxcala"
	UsuarioGlobal.guardar_progreso()
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
