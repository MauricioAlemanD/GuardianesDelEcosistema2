extends Node2D
var entered=false
var outside="res://Escena/S_CDMX.tscn"

func _ready():
	UsuarioGlobal.nivelActual = "Ciudad de méxico"
	$JugadorC/HUD/lblNivel.text = "Subterraneo"
	
func _on_exit_body_entered(body):
		get_tree().change_scene(outside)
		
	
func _on_exit_body_exited(body):
	pass
