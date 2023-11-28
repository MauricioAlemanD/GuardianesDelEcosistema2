extends Node2D

func _ready():
	pass

func _on_Fuego1_area_entered(area):
	$FuegoAnimacion.visible = false
	$Fuego1.position = Vector2(-9999,-9999)
	UsuarioGlobal.fuegoApagador = UsuarioGlobal.fuegoApagador + 1
	print(UsuarioGlobal.fuegoApagador)
