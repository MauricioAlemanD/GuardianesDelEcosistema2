extends Node2D
var segundos_pasados = 0
func _ready():
	
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn1.text = "Habla con los habitantes."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn2.text = "Explola el lugar."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn3.text = "Apaga el incendio provocado por el coyote."
	
	BgApertura.stop()
	BgMorelos.play()
	
	UsuarioGlobal.nivelActual = "Morelos"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Morelos"
	$Jugador/Camera2D/CambioEscena.visible = false
	UsuarioGlobal.fuegoApagador = 0
	$Jugador/Camera2D/tiempo.visible = false
	$Jugador/Camera2D/llamaradas.visible = false

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

func _on_temporizador_timeout():
	segundos_pasados += 1
	$Jugador/Camera2D/tiempo.text = "Tiempo restante "+ str(segundos_pasados)+"/100"
	$Jugador/Camera2D/llamaradas.text = "Llamaradas apagadas " + str(UsuarioGlobal.fuegoApagador)+"/20"
	if UsuarioGlobal.fuegoApagador == 20 and segundos_pasados <= 100 :
		print("Ganaste")
		$Jugador/Camera2D/CambioEscena.playing = true
		$Jugador/Camera2D/CambioEscena.visible = true
		var temporizadorEspera = Timer.new()
		temporizadorEspera.wait_time = 1
		temporizadorEspera.one_shot = true
		get_tree().get_root().add_child(temporizadorEspera)
		temporizadorEspera.connect("timeout",self,"_on_temporizador_espera_timeoutESE")
		temporizadorEspera.start()
	if UsuarioGlobal.fuegoApagador <20 and segundos_pasados > 100 :
		get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
	
func _on_temporizador_espera_timeoutESE():
	get_tree().change_scene("res://FinalJefe/Morelos.tscn")


func _on_eventoJefe_area_entered(area):
	$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Pe..Peroque he hecho, ayudame a controlar el incendio antes de que se propague. Si ya apagaaste algunos nos servira de mucho. Pasa por ellos para apagarlos."
	$Jugador/Camera2D/HUD/mnuTexto.visible = true
	$Jugador/Camera2D/tiempo.visible = true
	$Jugador/Camera2D/llamaradas.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	cerrarTexto.start()
	$temporizador.wait_time = 1
	$temporizador.one_shot = false
	$temporizador.connect("timeout", self, "_on_temporizador_timeout")
	$temporizador.start() 
