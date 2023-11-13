extends Node2D

func _ready():
	UsuarioGlobal.nivelActual = "Morelos"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Morelos"
