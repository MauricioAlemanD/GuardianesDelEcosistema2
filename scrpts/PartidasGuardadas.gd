extends Control #Hereda de control

#Cargar partida

var usuariosTotales = [] #Se crea una varaible de tipo arreglo para almacenar los usuarios que exitan en el fichero donde estan los usuarios
var cantidadUsuarios #Se crea una variable para almacenar la canrtidad de usuarios en total
var partida = 0 #Se crea una variable constane que tiene el indice de 0 para que automaticamente al iniciar el primer valor seleccioando sea el primer elemento en la lista, la cual cambiara para saber el indice con el nombre seleccionado
var usuario #Se crea una variable donde se almacenara el nombre del usuario


func busquedaUsuarios(): #Se crea la funcion busquedaUsuarios la cual permitira buscar los usuarios en user://usersData.dat 
	
	var file = File.new() #Se crea una variable de tipo file
	
	file.open("user://usersData.dat", File.READ) #Mediante la variable file se accedera al lector de archivos de user://usersData.dat para poder asi leer el contendio de este
	usuariosTotales = file.get_var() #Se copia el valor de todos los usuarios de user://usersData.dat y se le asignan a la variable de usuarosTotales para tener a los usuarios y poder trabajar con ellos 
	file.close() #Se cierra la conexion entre user://usersData.dat y el programa 
	cantidadUsuarios = usuariosTotales.size() #Se le asigna la cantidad total de usuarios a la variable cantidadUsuarios para poder hacer el llenado del contenedor de usuaros


func _ready(): #Se crea la funcion _ready para que sea el constructor de la escena
	
	busquedaUsuarios() #Se manda a llamar la funcion de busqueda usuarios
	
	var option_button = $cmbUsuarios #Se crea una variable en base al contenedor de los usuarios que se encuetra en la escena
	
	for i in range (0,cantidadUsuarios): #Se crea un for para que realice iteraciones las cuales añadiran los usuarios como un nuevo item al contenedor de usuarios
		
		option_button.add_item(usuariosTotales[i]) #Se añade a la varaible del conetenedor el item correspondiente dontro de la variabe usuariosTotales a la iteracion del ciclo for
		
	


func _on_btnJugar_pressed(): #Se crea el evento del boton jugar 
	usuario = usuariosTotales[partida] #Al nombre de usuario seleccionado dentro del contendor de usuarios se sera asignado a la variable usuario
	UsuarioGlobal.nombreUsuarioGlobal = usuario #A la varaible global encargada del nombre de usuario se le asgnara el valor de usuario local
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn") #Se cambia la escena acutal a la escena de seleccion de nivel
	


func _on_cmbUsuarios_item_selected(index): #Se crea el evento del contenedor de usuarios para que en base al indice eleccionado se tome en cuenta este 
	partida = index #A la variable partida se le asigna el valor del indice seleccionado en el contenedor
	


func _on_btnRegresar_pressed(): #Se añade el evento del evento del boton de regresar
	get_tree().change_scene("res://Escena/MenuInicial.tscn") #Se cambia la escena actual a la del menu inical


func _on_btnJugar_mouse_entered():
	$HitSound.play()


func _on_btnRegresar_mouse_entered():
	$HitSound.play()
