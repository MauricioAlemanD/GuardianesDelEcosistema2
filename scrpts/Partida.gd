extends Control
# Partida Cargar y crear partida
var usuariosExistentes = false

func _ready():
	$VBoxContainer/btnCargarPartida.disabled = true
	busquedaUsuarios()
	
	if usuariosExistentes == true:
		$VBoxContainer/btnCargarPartida.disabled = false
	

func busquedaUsuarios():
	var file = File.new()
	
	print("Buscando directorio")
	if (file.file_exists("user://usersData.dat")):
		print("usersData existe en el directorio")
		var usuariosExistentes = true
		$VBoxContainer/btnCargarPartida.disabled = false
		
		
	else:
		var usuarios = []
		file.open("user://usersData.dat",File.WRITE)
		file.store_var(usuarios)
		file.close()	
		print("Se creo el archivo usuarios.dat")
		

func _on_btnSalir_pressed():
	get_tree().change_scene("res://Escena/Control.tscn")


func _on_btnCrearNuevaPartida_pressed():
	get_tree().change_scene("res://Escena/Registro.tscn")


func _on_btnCargarPartida_pressed():
	get_tree().change_scene("res://Escena/PartidasGuardadas.tscn")
