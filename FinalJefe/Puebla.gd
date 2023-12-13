extends Node2D

var textoCompleto = "¡Vaya, ha sido todo un descubrimiento! Pasé mucho tiempo tratando de ser alguien que no era realmente, pero finalmente he comprendido que la persona que aparento no refleja mi verdadera esencia. Aprecio mucho que me hayas mostrado mi auténtico yo. ¡Gracias por eso!"
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
	UsuarioGlobal.nivelActual = "Morelos"
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
