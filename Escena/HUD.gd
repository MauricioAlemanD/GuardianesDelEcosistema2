extends Node2D


func _ready():
	$lblJugador.text = UsuarioGlobal.nombreUsuarioGlobal
	$lblNivel.text = UsuarioGlobal.nivelActual


func _on_btnAjustes_pressed():
	print("Ajustes")


func _on_btnMisiones_pressed():
	print("Misiones")
