extends Node2D


func _ready():
	UsuarioGlobal.nivelActual = "Queretaro"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Queretaro"
