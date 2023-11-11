extends Node2D

func abrirNiv1():
	get_tree().change_scene("res://Escena/S_Guanajuato.tscn")

func _on_AreaGuanajuato_area_entered(area):
	$GuanajuatoAz/AreaGuanajuato/CambioEscena.playing = true
	var tiempo_expirado = Timer.new()
	tiempo_expirado.wait_time = 1
	tiempo_expirado.one_shot = true
	get_tree().get_root().add_child(tiempo_expirado)
	tiempo_expirado.connect("timeout",self,"_on_tiempo_expirado")
	
	tiempo_expirado.start()

func _on_tiempo_expirado():
	abrirNiv1()
