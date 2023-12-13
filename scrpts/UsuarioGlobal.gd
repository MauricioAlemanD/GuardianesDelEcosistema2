extends Node #Herda de nodo

#Varaibles globales
var progresos = {}
var nombreUsuarioGlobal = "Guardian 1" 
var nivelActual = ""
var levels = {"1":true,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"8":false}
var stateLevel1 = {"1":false,"2":false,"3":false}
var stateLevel2 = {"1":false,"2":false,"3":false}
var stateLevel3 = {"1":false,"2":false,"3":false}
var stateLevel4 = {"1":false,"2":false,"3":false}
var stateLevel5 = {"1":false,"2":false,"3":false}
var stateLevel6 = {"1":false,"2":false,"3":false}
var stateLevel7 = {"1":false,"2":false,"3":false}
var stateLevel8 = {"1":false,"2":false,"3":false}
var botellasRecogidas = 0
var fuegoApagador = 0

var cuadroTexto = "Habitante: ";
var ganadoJefe1 = true;
var ganadoJefe2 = true;

func busqueda_progresos():
	var file = File.new() #Se crea una varibale de tipo file para poder trabaajr con archivos
	file.open("user://Progreso.dat",File.READ)
	progresos = file.get_var()
	file.close()
	nivelActual = progresos[nombreUsuarioGlobal]
	
func guardar_progreso():
	var file = File.new() #Se crea una varibale de tipo file para poder trabaajr con archivos
	progresos[nombreUsuarioGlobal] = nivelActual
	file.open("user://Progreso.dat",File.WRITE)
	file.store_var(progresos)
	file.close()
