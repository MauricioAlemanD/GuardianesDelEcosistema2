extends Node2D

var textoCompleto = "Que he hecho!, me enfoque demasiado en mi diversión que olvide que existía gente y arboles a mis alrededores a quienes podía dañar, esto no está bien, buscare la manera de arreglar las consecuencias de mis actos."
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
	UsuarioGlobal.nivelActual = "Estado de México"
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
