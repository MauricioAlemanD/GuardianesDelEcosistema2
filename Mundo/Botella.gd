extends Node2D


func ocultBotella():
	var QuitaBotella = load("res://Mundo/QuitaBotella.tscn")
	var quitaBotella = QuitaBotella.instance()
	var NivelGuanajuato = get_tree().current_scene
	NivelGuanajuato.add_child(quitaBotella)
	quitaBotella.global_position = global_position
	

#func _process(delta):
#	if Input.is_action_just_pressed("pick"):
#
#		var QuitaBotella = load("res://Mundo/QuitaBotella.tscn")
#		var quitaBotella = QuitaBotella.instance()
#		var NivelGuanajuato = get_tree().current_scene
#		NivelGuanajuato.add_child(quitaBotella)
#		quitaBotella.global_position = global_position
#
#
#		queue_free()


func _on_HurtBox_area_entered(_area):
	UsuarioGlobal.botellasRecogidas += 1
	ocultBotella()
	queue_free()
	print(UsuarioGlobal.botellasRecogidas)
	
