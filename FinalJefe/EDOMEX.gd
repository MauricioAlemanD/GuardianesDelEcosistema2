extends Node2D

var textoCompleto = "Debo pedir disculpas a todos quien he molestado, de verdad es muy divertido tomar basura y dejarla por ahí, sin embargo estoy causando mucha contaminación en el lugar, perdón por eso."
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
	UsuarioGlobal.nivelActual = "Ciudad de México"
	UsuarioGlobal.guardar_progreso()
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
