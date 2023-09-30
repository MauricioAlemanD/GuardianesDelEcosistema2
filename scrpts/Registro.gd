extends Control

# Registro para registrar el usuario

var  nombreUsuario = "" #Se crea y define la variable para almacenar el nombre de usuario ongresado
var usuariosToales = [] #Se crea la variable de tipo array para almacenar los usuarios totales 

func _ready(): #Se crea e inica el constructor de la escena 
	$btnSiguiente.disabled = true  #Se establece la propiedad deshabilitada del boton siguiene verdadera
	busquedaUsuarios() #Se manda a llamar al metodo de busquedaUsuarios
	

func busquedaUsuarios(): #Se crea la funcion de busquedaUsusarios
	
	var file = File.new() #Se crea la variable de archivo para acceder a los archivos
	
	file.open("user://usersData.dat", File.READ) #Se accede a la lectura de datos mediante la varible file 
	usuariosToales = file.get_var() #Se obtiene el contendio de la variale de usuarios en el archivo y se almacenan en usauriosTotales
	file.close() #Se cierra la conexion al fichero
		


func _on_btnRegresar_pressed(): #Se crea el evento del boton regresar 
	get_tree().change_scene("res://Escena/MenuInicial.tscn") #Se cambia de la escena actual a la escena de menu inical


func _on_btnSiguiente_pressed(): #Se crea el evento del boton siguiente

	$lblExistente.visible == false #Se establece la propiedad de la etiqueta de exitencia en false para ocultarla en cada click
	nombreUsuario = $txtNombre.text #Se estblece el valor de la variable de nombre de usuario con el contenido del campo de texto del nombre
	var ut = usuariosToales.size() #Se crea una variable la cual contendra el totoal de usuarios registrados previamente
	
	for i in range(0,ut): #Se crea un ciclo for para comparar con cada nombre de usuario registrado con anterioridad con el nombre de usuario ingresado en la escena
		
		if usuariosToales[i] == nombreUsuario: #Se crea la condicion para saber si el valor de usuariosTotales en la teracion de i es igual al valor del usuario registrado
			$lblExistente.visible = true #Si encuentra una coincidenca la etiqueta de exitencia se hara visible indicando que ya existe el usuario
		else: #De lo contrario se mantendra en falso
			$lblExistente.visible = false #La etiqueta de exitencia semantiene oculta con su propiedad en falso
		

	if $lblExistente.visible == false: #Se crea la condicion de que si la etiqueta de existencia esta no visible permitira crear un nuevo usaurio
		usuariosToales.append(nombreUsuario) #Se insetra el usaurio en el arreglo de usuariosTotales con la propiedad append
		var file = File.new() #Se crea la variable de archivo para poder acceder al archivo user://usersData.dat y sobreescribirlo/actualizarlo con el nuevo usuario
		file.open("user://usersData.dat",File.WRITE) #Se establece la conexion con el archivo para escribir en el 
		file.store_var(usuariosToales) #Con la propiedad .store_var se le agrega el valor del arreglo de usuariosTotales actualizado al archivo user://usersData.dat
		file.close() #Se cierra la conexion con el archivo
		UsuarioGlobal.nombreUsuarioGlobal = nombreUsuario #Al nombre de usuario global dentro de las varaibles globeles se le asignara el nombre de usuario ingresado para comenzar la partida
		get_tree().change_scene("res://Escena/seleccionNiveles.tscn") #Se cambia la escena actual por la escena de seleccion de nivel
	

func _on_txtNombre_text_changed(): #Se crea el evento de campo de texto cuando este es alterado
	$btnSiguiente.disabled = false #Se establece que el boton siguente este habilitado cuando el campo de texto rreciba un tecleo
	if $txtNombre.text == "": #Se crea una condicion comparando el contenido del campo de texto con una cadena vacia para evitar que ingresen usuarios vacios
		$btnSiguiente.disabled = true #Se cambia la propiedad de deshabilitado al boton siguiente
