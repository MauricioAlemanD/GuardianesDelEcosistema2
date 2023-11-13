extends Node2D

func _ready():
	UsuarioGlobal.nivelActual = "Hidalgo"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Hidalgo"
