extends Node2D
func _ready():
	BgApertura.stop()
	BgTlaxcala.play()
	
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn1.text = "Habla con los habitantes."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn2.text = "Libera a las palomas blancas."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn3.text = "Descubre el secreto de la serpiente sospechosa."
	
	UsuarioGlobal.nivelActual = "Tlaxcala"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Tlaxcala"
	$Tlaxcala/Jaulajefe.visible = false
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
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Tlaxcala es un lugar muy tranquilo y bonito, solamente que hay problemas... Como todos los demas estados."
	
	if NPC == 2:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Mi mamá esta preocupada de que algun día se lleven a nuestra paloma y que nunca más la volvamos a ver."
		
	if NPC == 3:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Estoy muy triste, hace tres dias que no veo a mi amiga paloma."
	
	
	$Jugador/Camera2D/HUD/mnuTexto.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	
	cerrarTexto.start()
func _on_tiempo_expirado():
	$Jugador/Camera2D/HUD/mnuTexto.visible = false
func _on_quitaJaulaPaloma1_area_entered(area):
	print("aa")
	$Paloma1/jaulaPaloma1.visible = false
func _on_quitaJaulaPaloma2_area_entered(area):
	$Paloma2/jaulaPaloma2.visible = false
func _on_quitaJaulaPaloma3_area_entered(area):
	$Paloma3/jaulaPaloma3.visible = false
func _on_eventoJefe_area_entered(area):
	if $Paloma1/jaulaPaloma1.visible == false and $Paloma2/jaulaPaloma2.visible == false and $Paloma3/jaulaPaloma3.visible == false:
		print("Ganaste")
		$Tlaxcala/Jaulajefe.visible = true
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "¡Me atrapaste!"
		$Jugador/Camera2D/HUD/mnuTexto.visible = true
		var cerrarTexto = Timer.new()
		cerrarTexto.wait_time = 10
		cerrarTexto.one_shot = true
		get_tree().get_root().add_child(cerrarTexto)
		cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
		$Jugador/Camera2D/CambioEscena.playing = true
		$Jugador/Camera2D/CambioEscena.visible = true
		$temporizadorEspera.wait_time = 1
		$temporizadorEspera.one_shot = true
		$temporizadorEspera.connect("timeout", self, "_on_temporizador_espera_timeoutES")
		$temporizadorEspera.start()
	elif  $Paloma1/jaulaPaloma1.visible == false and $Paloma2/jaulaPaloma2.visible == false and $Paloma3/jaulaPaloma3.visible == true:
		print("Yo no se nada")
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Yo no se nada..."
		$Jugador/Camera2D/HUD/mnuTexto.visible = true
		var cerrarTexto = Timer.new()
		cerrarTexto.wait_time = 10
		cerrarTexto.one_shot = true
		get_tree().get_root().add_child(cerrarTexto)
		cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	elif  $Paloma1/jaulaPaloma1.visible == false and $Paloma2/jaulaPaloma2.visible == true and $Paloma3/jaulaPaloma3.visible == true:
		print("Deja de entrometerte")
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Deja de entrometerte..."
		$Jugador/Camera2D/HUD/mnuTexto.visible = true
		var cerrarTexto = Timer.new()
		cerrarTexto.wait_time = 10
		cerrarTexto.one_shot = true
		get_tree().get_root().add_child(cerrarTexto)
		cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	elif  $Paloma1/jaulaPaloma1.visible == true and $Paloma2/jaulaPaloma2.visible == true and $Paloma3/jaulaPaloma3.visible == true:
		print("Que buen dia hace hoy")
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Que buen dia para trabajar hoy."
		$Jugador/Camera2D/HUD/mnuTexto.visible = true
		var cerrarTexto = Timer.new()
		cerrarTexto.wait_time = 10
		cerrarTexto.one_shot = true
		get_tree().get_root().add_child(cerrarTexto)
		cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
func _on_temporizador_espera_timeoutES():
	get_tree().change_scene("res://FinalJefe/Tlaxcala.tscn")
