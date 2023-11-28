extends Node2D
var basura = Dictionary()
var basuraEnInventario  = ""
var contadorBasura = 0


func _ready():
	UsuarioGlobal.nivelActual = "Estado de México"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Estado de México"
	basura["Bateria"] = false
	basura["Aerosol"] = false
	basura["Caja"] = false
	basura["FrutaPodrida1"] = false
	basura["FrutaPodrida2"] = false
	basura["Garrafa"] = false
	basura["Jeringa"] = false
	basura["Libreta"] = false
	basura["Pescado1"] = false
	basura["Taza1"] = false
	basura["Teni"] = false
	$Jugador/Paoloma.visible = false
	$Jugador/Tache.visible = false
	$Jugador/Camera2D/CambioEscena.visible = false

func _on_Area2D_area_entered(area):
	var NPC
	
	var coordenadas_npc1 = Vector2($NPC1.position)
	var coordenadas_npc2 = Vector2($NPC2.position)
	var coordenadas_npc3 = Vector2($NPC3.position)
	
	var margen = 0.1
	var coordenadas_personaje = $Jugador.position
	
	if coordenadas_personaje.x > coordenadas_npc1.x - coordenadas_npc1.x * margen and coordenadas_personaje.x < coordenadas_npc1.x + coordenadas_npc1.x * margen and coordenadas_personaje.y > coordenadas_npc1.y - coordenadas_npc1.y * margen and coordenadas_personaje.y < coordenadas_npc1.y + coordenadas_npc1.y * margen:
		print("El personaje está cerca de NPC1.")
		NPC = 1
		
	if coordenadas_personaje.x > coordenadas_npc2.x - coordenadas_npc2.x * margen and coordenadas_personaje.x < coordenadas_npc2.x + coordenadas_npc2.x * margen and coordenadas_personaje.y > coordenadas_npc2.y - coordenadas_npc2.y * margen and coordenadas_personaje.y < coordenadas_npc2.y + coordenadas_npc2.y * margen:
		print("El personaje está cerca de NPC2.")
		NPC = 2
	
	if coordenadas_personaje.x > coordenadas_npc3.x - coordenadas_npc3.x * margen and coordenadas_personaje.x < coordenadas_npc3.x + coordenadas_npc3.x * margen and coordenadas_personaje.y > coordenadas_npc3.y - coordenadas_npc3.y * margen and coordenadas_personaje.y < coordenadas_npc3.y + coordenadas_npc3.y * margen:
		print("El personaje está cerca de NPC3.")
		NPC = 3
	
	if NPC == 1:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Habitante: En el centro histórico de Guanajuato, hay un callejón estrecho conocido como el ''Callejón del Beso''. La leyenda cuenta que dos amantes de diferentes clases sociales se encontraban en balcones opuestos y, al no poder casarse, se besaron en este callejón."
	
	if NPC == 2:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Habitante: En las entrañas de esta región, la despiadada minería ha dejado tras de sí materiales letales que acechan tanto a nosotros como a la vida silvestre. Lamentablemente, los dueños de las empresas mineras parecen incapaces de sentir la tragedia que provocan, mostrando una indiferencia cruel ante el daño irreparable que infligen a nuestra tierra."
		
	if NPC == 3:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Mis abuelos me platicaban como antes había mas flora y fauna en esta zona, pero desde que llegó la industria minera todo empezó a morir."
	
	
	$Jugador/Camera2D/HUD/mnuTexto.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	
	cerrarTexto.start()

func _on_tiempo_expirado():
	$Jugador/Camera2D/HUD/mnuTexto.visible = false
func _on_boteInseguroEvt_area_entered(area):
	print(basuraEnInventario)
	if basuraEnInventario != "":
		if basuraEnInventario == "Bateria" or basuraEnInventario == "Jeringa":
			basura[basuraEnInventario] = true
			basuraEnInventario = ""
			print("correcto")
			paloma()
		else:
			print("Esta basura no va aqui")
			tache()

func _on_evtBateria_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Bateria.queue_free()
		basuraEnInventario = "Bateria"
func _on_evtJeringa_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Jeringa.queue_free()
		basuraEnInventario = "Jeringa"
func _on_boteOrganicoEvt_area_entered(area):
	print(basuraEnInventario)
	if basuraEnInventario != "":
		if basuraEnInventario == "FrutaPodrida1" or basuraEnInventario == "FrutaPodrida2" or basuraEnInventario == "Pescado1":
			basura[basuraEnInventario] = true
			basuraEnInventario = ""
			print("correcto")
			paloma()
		else:
			print("Esta basura no va aqui")
			tache()
		
	
func _on_evfFrutaPodriada1_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Frutapodrida1.queue_free()
		basuraEnInventario = "FrutaPodrida1"
func _on_evtFrutaPodrida2_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Frutapodrida2.queue_free()
		basuraEnInventario = "FrutaPodrida2"
func _on_evtPescado1_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Pescado1.queue_free()
		basuraEnInventario = "Pescado1"
func _on_boteInorganicoEvt_area_entered(area):
	if basuraEnInventario != "":
		print(basuraEnInventario)
		if basuraEnInventario == "Aerosol" or basuraEnInventario == "Taza1" or basuraEnInventario == "Teni":
			basura[basuraEnInventario] = true
			basuraEnInventario = ""
			print("correcto")
			paloma()
		else:
			print("Esta basura no va aqui")
			tache()

func _on_evtAerosol_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Aerosol.queue_free()
		basuraEnInventario = "Aerosol"
func _on_evtTaza1_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Taza1.queue_free()
		basuraEnInventario = "Taza1"

func _on_botePapelEvt_area_entered(area):
	if basuraEnInventario != "":
		print(basuraEnInventario)
		if basuraEnInventario == "Caja" or basuraEnInventario == "Libreta":
			basura[basuraEnInventario] = true
			basuraEnInventario = ""
			print("correcto")
			paloma()
		else:
			print("Esta basura no va aqui")
			tache()
func _on_evtCaja_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Caja.queue_free()
		basuraEnInventario = "Caja"
func _on_evtLibreta_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Libreta.queue_free()
		basuraEnInventario = "Libreta"
func _on_botePlasticoEvt_area_entered(area):
	if basuraEnInventario != "":
		print(basuraEnInventario)
		if basuraEnInventario == "Garrafa" or basuraEnInventario == "Tapa":
			basura[basuraEnInventario] = true
			basuraEnInventario = ""
			print("correcto")
			paloma()
		else:
			print("Esta basura no va aqui")
			tache()
func _on_evtGarrafa_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Garrafa.queue_free()
		basuraEnInventario = "Garrafa"

func paloma():
	contadorBasura = contadorBasura + 1
	$Jugador/Paoloma.visible = true
	var senal2 = Timer.new()
	senal2.wait_time = 1.5
	senal2.one_shot = true
	get_tree().get_root().add_child(senal2)
	senal2.connect("timeout",self,"SenalPalomaOff")
	senal2.start()
func tache():
	$Jugador/Tache.visible = true
	var senal = Timer.new()
	senal.wait_time = 1.5
	senal.one_shot = true
	get_tree().get_root().add_child(senal)
	senal.connect("timeout",self,"SenalTacheOff")
	senal.start()

func SenalPalomaOff():
	$Jugador/Paoloma.visible = false
	corroborarBasura()
func SenalTacheOff():
	$Jugador/Tache.visible = false
	corroborarBasura()
func corroborarBasura():
	$Jugador/Label.text = "Basura recolectada: "+str(contadorBasura)+" /11"
	if basura["Bateria"] == true and basura["Aerosol"] == true and basura["Caja"] == true and basura["FrutaPodrida1"] == true and basura["FrutaPodrida2"] == true and basura["Garrafa"] == true and basura["Jeringa"] == true and basura["Libreta"] == true and basura["Pescado1"] == true and basura["Taza1"] == true and basura["Teni"] == true:
		$Jugador/Camera2D/CambioEscena.playing = true
		$Jugador/Camera2D/CambioEscena.visible = true
		$temporizadorEspera.wait_time = 1
		$temporizadorEspera.one_shot = true
		$temporizadorEspera.connect("timeout", self, "_on_temporizador_espera_timeoutES")
		$temporizadorEspera.start()
func _on_temporizador_espera_timeoutES():
	get_tree().change_scene("res://FinalJefe/EDOMEX.tscn")
	


func _on_evtTeni_area_entered(area):
	if basuraEnInventario == "":
		$Basura/Teni.queue_free()
		basuraEnInventario = "Teni"
