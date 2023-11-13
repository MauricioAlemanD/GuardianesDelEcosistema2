extends Node2D


func _ready():
	UsuarioGlobal.nivelActual = "Puebla"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Puebla"
