extends Node2D

func _ready():
	UsuarioGlobal.nivelActual = "Estado de México"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Estado de México"
