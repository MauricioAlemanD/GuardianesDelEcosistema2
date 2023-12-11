extends Node2D

func abrirNiv8():
	get_tree().change_scene("res://Escena/S_CDMX.tscn")

func _on_tiempo_expirado():
	abrirNiv8()

func _on_AreaCDMX_area_entered(area):
	$CdmxAz/AreaCDMX/CambioEscena.playing = true
	var tiempo_expirado = Timer.new()
	tiempo_expirado.wait_time = 1
	tiempo_expirado.one_shot = true
	get_tree().get_root().add_child(tiempo_expirado)
	tiempo_expirado.connect("timeout",self,"_on_tiempo_expirado")
	
	tiempo_expirado.start()
