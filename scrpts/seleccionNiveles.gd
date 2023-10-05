extends Control #Hereda de control

#Seleccion de personje 

func _ready(): #Se crea e inicia el construcor de la escena
	
	$lblNombreUsuario.text = UsuarioGlobal.nombreUsuarioGlobal #Se añadde al texto de la etiqueta el valor del usuario global


func _on_Button_pressed(): #Se crea el evento para el boton de salir
	
	get_tree().change_scene("res://Escena/MenuInicial.tscn") #Se cambia de la escena actual a la escena de inicio de sesion


