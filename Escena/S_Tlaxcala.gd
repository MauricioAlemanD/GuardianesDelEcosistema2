extends Node2D


func _ready():
	UsuarioGlobal.nivelActual = "Tlaxcala"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Tlaxcala"
