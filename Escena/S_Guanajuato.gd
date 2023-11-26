extends Node2D

var estalactita = preload("res://Mundo/Estalactita/Estalactita.tscn")
var estalactitas = 0


func _ready():
	UsuarioGlobal.nivelActual = "Guanajuato"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Guanajuato"
	
	$Roca.visible = false
	$Suelos.visible = false
	UsuarioGlobal.ganadoJefe1 = true
	$Jugador/Camera2D/CambioEscena.visible = false
	


func _on_Area2D_area_entered(area):
	var NPC
	
	var coordenadas_npc1 = Vector2(2641.317383, 2687.941406)
	var coordenadas_npc2 = Vector2(2907.70752, 2005.389526)
	var coordenadas_npc3 = Vector2(1602.356689, 1480.791626)
	
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
	cerrarTexto.wait_time = 5
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	
	cerrarTexto.start()

func _on_tiempo_expirado():
	$Jugador/Camera2D/HUD/mnuTexto.visible = false

func jefeMuricelago():
	
	for i in range(10):
		
		var esperarEstalactita = Timer.new()
		esperarEstalactita.wait_time = 1
		esperarEstalactita.one_shot = false
		get_tree().get_root().add_child(esperarEstalactita)
		esperarEstalactita.connect("timeout", self, "_on_tiempo_expirado2", [i])
		esperarEstalactita.start()
		
	print("Has ganado")
	
func _on_temporizador_espera_timeoutES():
	# Cambia la escena después de 2 segundos
	get_tree().change_scene("res://FinalJefe/Guanajuato.tscn")

func _on_tiempo_expirado2(iteracion):
	
	if UsuarioGlobal.ganadoJefe1 == false:
		get_tree().change_scene("res://Escena/MenuInicial.tscn")
	elif estalactitas == 10 and UsuarioGlobal.ganadoJefe1 == true:
		$Jugador/Camera2D/CambioEscena.playing = true
		$Jugador/Camera2D/CambioEscena.visible = true
		$temporizadorEspera.wait_time = 1
		$temporizadorEspera.one_shot = true
		$temporizadorEspera.connect("timeout", self, "_on_temporizador_espera_timeoutES")
		$temporizadorEspera.start()

	
	print("Caida de roca en iteración:", iteracion)
	var coordenadas_personaje = $Jugador.position
	
	var nueva_estalactita = estalactita.instance()
	
	nueva_estalactita.position.x = coordenadas_personaje.x
	nueva_estalactita.position.y = coordenadas_personaje.y

	add_child(nueva_estalactita)
	
	


func _on_eventoMurcielago_area_entered(area):
	print("fffff")
	jefeMuricelago()
	$eventoMurcielago/CollisionShape2D.position = Vector2(0, 0)
	$Roca.position = Vector2(0,0)
	$Suelos.position = Vector2(0,0)
	$Roca.visible = true
	$Suelos.visible = true
	
	var esperarEstalactita = Timer.new()
	esperarEstalactita.wait_time = 1
	esperarEstalactita.one_shot = false
	get_tree().get_root().add_child(esperarEstalactita)
	esperarEstalactita.connect("timeout", self, "_on_tiempo_expirado3")
	esperarEstalactita.start()

	
func _on_tiempo_expirado3():
	
	if UsuarioGlobal.ganadoJefe1 == true:
		print("Felicidades has ganado")
		estalactitas = estalactitas + 1
		print(estalactitas)
		
		
		
	elif UsuarioGlobal.ganadoJefe1 == false:
		print("Intentalo de nuevo")
		


