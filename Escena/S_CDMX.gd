extends Node2D

func _ready():
	UsuarioGlobal.nivelActual = "Ciudad de méxico"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel ciudad de méxico"
