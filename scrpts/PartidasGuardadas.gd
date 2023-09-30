extends Control

var usuariosTotales = []
var cantidadUsuarios
var partida = 0 
var usuario

func _ready():
	busquedaUsuarios()
	
	var option_button = $cmbUsuarios
	
	#option_button.add_item("Opción 1")
	
	for i in range (0,cantidadUsuarios):
		
		option_button.add_item(usuariosTotales[i])
		
	


func busquedaUsuarios():
	var file = File.new()
	
	print("Buscando archivo de usuarios")
	
	file.open("user://usersData.dat", File.READ)
	usuariosTotales = file.get_var()
	file.close()
	cantidadUsuarios = usuariosTotales.size()
	print(cantidadUsuarios)


func _on_btnJugar_pressed():
	usuario = usuariosTotales[partida]
	UsuarioGlobal.nombreUsuarioGlobal = usuario
	print(UsuarioGlobal.nombreUsuarioGlobal)
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
	


func _on_cmbUsuarios_item_selected(index):
	partida = index
	


func _on_btnRegresar_pressed():
	get_tree().change_scene("res://Escena/MenuInicial.tscn")
