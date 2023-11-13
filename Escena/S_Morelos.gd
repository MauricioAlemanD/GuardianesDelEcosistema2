extends Node2D

func _ready():
	UsuarioGlobal.nivelActual = "Guanajuato"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Guanajuato"
