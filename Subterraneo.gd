extends Node2D

export(PackedScene) var inside_scene

func enter():
	get_tree().change_scene(inside_scene.resource_path)
	print("entra a cuevas subterraneas")
	
func _on_sub_body_entered(body):
	print("Jugador entró en el área del subterráneo")
	body.Subterra=self


func _on_sub_body_exited(body):
	print("Jugador salió del área del subterráneo")
	if body.Subterra==self:
		body.Subterra=null
