extends Control #Hereda de control

func _on_btnJugar_pressed(): #Se crea el evento del boton de jugar
	get_tree().change_scene("res://Escena/Partida.tscn") #se accede a la raiz del proyecto, para cambiar a la escena llamada PArtida


func _on_btnSalir_pressed(): #Se crea el evento del boton salir
	get_tree().quit() #Se accede a la raiz del proyecto y se le pide salir con .quit() 


func _on_btnJugar_mouse_entered():
	$HitSound.play()

func _on_btnSalir_mouse_entered():
	$HitSound.play()


func _on_Menu_ready():
	if BgApertura.playing == true:
		pass
	else:
		BgApertura.play()
	
