extends Node2D

func abrirNiv6():
	get_tree().change_scene("res://Escena/S_Morelos.tscn")

func _on_tiempo_expirado():
	abrirNiv6()

func _on_AreaMorelos_area_entered(area):
	$MorelosAz/AreaMorelos/CambioEscena.playing = true
	var tiempo_expirado = Timer.new()
	tiempo_expirado.wait_time = 1
	tiempo_expirado.one_shot = true
	get_tree().get_root().add_child(tiempo_expirado)
	tiempo_expirado.connect("timeout",self,"_on_tiempo_expirado")
	
	tiempo_expirado.start()
