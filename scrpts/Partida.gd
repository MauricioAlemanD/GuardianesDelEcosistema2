extends Control #Hereda de control 

# Partida Cargar y crear partida

var usuariosExistentes = false #Se define la variable para saber si el usuario existe en el juego

func _ready(): #Se inicializa la funcion ready, esta funcion es como el constructor, ya que se inica automaticamente cuando la escena se inicia
	$VBoxContainer/btnCargarPartida.disabled = true #Se establece la propiedad deshabilitada del boton de Cargar partida como true, se utiliza "$" para hacer referencia al objeto que esta dentro del escenario
	busquedaUsuarios() #Se manda a llamar al metodo de buscquedaUsuarios
	
	if usuariosExistentes == true: #Se crea una condicion para saber si existe el ususario y si este usuaro no existe hara que la propiedad de deshabilidtado del boton de cargar partida sea false
		$VBoxContainer/btnCargarPartida.disabled = false #Se cambia la propiedad de deshabilitacion para el boton de cargar partida
	

func busquedaUsuarios(): #Se crea una funcion llamada busquedaUsuarios, que nos servira para identificar los directorios y los ficheros
	
	var file = File.new() #Se crea una varibale de tipo file para poder trabaajr con archivos
	
	if (file.file_exists("user://usersData.dat")): #Se crea la condicion que si existe el documento en user://usersData.dat se active el usuario existente y de esta manera habilitar el boton de cargar partida
		
		usuariosExistentes = true #Se da el valor de verdadero a la varaible de ususarios exitentes para indicar que si exiten ususarios en el juego ya registrados
		
		$VBoxContainer/btnCargarPartida.disabled = false #Se cambia la propiedad de deshabilitado a falso
		
		
	else: #En caso de no encontrar el fichero de user://usersData.dat se hara lo contraio
		
		var usuarios = [] #Se define una varaible de tipo array para que en esta se vayan almacenando los usuarios proximos a crear
		file.open("user://usersData.dat",File.WRITE) #Mediante la variable de objeto file y la propiedad open se podra activar la conexion entre archivo y programa
		file.store_var(usuarios) #Mediante la variable de tipo file y su propiedad store_var se almacenara toda la variable dentro del fichero
		file.close() #Se cierra la conexion programa fichero apra evitar problemas de rendimiento y recursos
		

func _on_btnSalir_pressed(): #Se crea el evento del boton salir que regresa al menu inical
	get_tree().change_scene("res://Escena/MenuInicial.tscn") #Se canmbia de la escena actual a la escena de manu principal


func _on_btnCrearNuevaPartida_pressed(): #Se define el evento del boton para crear nueva partida para pasar a la configuracion de nueva partida
	get_tree().change_scene("res://Escena/Registro.tscn") #Se cambia de la escena actual a la escena de registro 


func _on_btnCargarPartida_pressed(): #Se define el evento del boton de cargar partida
	get_tree().change_scene("res://Escena/PartidasGuardadas.tscn") #Se cambia la escena actual a la escena de cargar partida
