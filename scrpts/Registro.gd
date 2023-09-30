extends Control
# Registro para registrar el usuario
var  nombreUsuario = ""
var usuariosToales = []

func _ready():
	$btnSiguiente.disabled = false
	busquedaUsuarios()
	

func busquedaUsuarios():
	var file = File.new()
	
	print("Buscando directorio")
	if (file.file_exists("user://usersData.dat")):
		file.open("user://usersData.dat", File.READ)
		usuariosToales = file.get_var()
		file.close()
		print("usersData existe en el directorio")
		print("**********")
		
		
	else:
		file.open("user://usersData.dat",File.WRITE)
		file.close()	
		print("Se creo el archivo usuarios.dat")
		

func _on_btnRegresar_pressed():
	get_tree().change_scene("res://Escena/Partida.tscn")


func _on_btnSiguiente_pressed():
	print("________________")
	$lblExistente.visible == false
	nombreUsuario = $txtNombre.text
	var ut = usuariosToales.size()
	print(ut)
	
	for i in range(0,ut):
		print("instancia ",i)
		print("Se compara " , usuariosToales[i] ," con ", nombreUsuario)
		
		
		if usuariosToales[i] == nombreUsuario:
			print("Dato a comparar con nombre de usuario",i)
			print(nombreUsuario)
			$lblExistente.visible = true
		else:
			$lblExistente.visible = false
		
		

	
	if $lblExistente.visible == false:
		usuariosToales.append(nombreUsuario)
		print("Se guardo el usuario " + nombreUsuario)
		var file = File.new()
		file.open("user://usersData.dat",File.WRITE)
		file.store_var(usuariosToales)
		file.close()	
		print("Se actualizo usersData.dat")
		UsuarioGlobal.nombreUsuarioGlobal = nombreUsuario
		print("Usuario global ",UsuarioGlobal.nombreUsuarioGlobal)
		get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
		
		
		
	
