extends Node2D
var entered=false
var outside="res://Escena/S_CDMX.tscn"

func _on_exit_body_entered(body):
		get_tree().change_scene(outside)
		
	
func _on_exit_body_exited(body):
	pass
