extends Node2D

var segundos_pasados = 0

func _ready():
	
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn1.text = "Habla con los habitantes."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn2.text = "Explora el mapa."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn3.text = "Sobvrevive al equipo de ratas corporativas."
	BgApertura.stop()
	BgQueretaro.play()
	
	UsuarioGlobal.nivelActual = "Queretaro"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Queretaro"
	$Traileres.position = Vector2(0,0)
	$Traileres.visible = false
	$secuas1/tubo1.visible = false
	$secuas1/tubo2.visible = false
	$secuas1/tubo3.visible = false
	$secuas2/tubo1.visible = false
	$secuas2/tubo2.visible = false
	$secuas2/tubo3.visible = false
	$secuas3/tubo1.visible = false
	$secuas3/tubo2.visible = false
	$secuas3/tubo3.visible = false
	$Jefe/tubo1.visible = false
	$Jefe/tubo2.visible = false
	$Jefe/tubo3.visible = false
	UsuarioGlobal.ganadoJefe2 = true
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

func _on_EventoJefe_area_entered(area): 
	$EventoJefe.position = Vector2(0,0)
	print(UsuarioGlobal.ganadoJefe2)
	$Traileres.position = Vector2(1648.095,3121.481)
	$Traileres.visible = true
	$temporizador.wait_time = 1
	$temporizador.one_shot = false
	$temporizador.connect("timeout", self, "_on_temporizador_timeout")
	$temporizador.start() 
	
func _on_temporizador_timeout():
	segundos_pasados += 1
	if segundos_pasados ==1:
		tubo1()
	if segundos_pasados == 2:
		tubo2()
	if segundos_pasados == 3:
		tubo3()
	if segundos_pasados == 4:
		tubo4()
	if segundos_pasados == 5:
		tubo5()
	if segundos_pasados == 6:
		tubo6()
	if segundos_pasados == 7:
		tubo7()
	if segundos_pasados == 8:
		tubo8()
	if segundos_pasados == 9:
		tubo9()
	if segundos_pasados == 10:
		tubo10()
	if segundos_pasados == 11:
		tubo11()
	if segundos_pasados == 12:
		tubo12()
	if segundos_pasados == 13:
		tubo1()
	if segundos_pasados == 14:
		tubo2()
	if segundos_pasados == 15:
		tubo3()
	if segundos_pasados == 16:
		tubo4()
	if segundos_pasados == 17:
		tubo5()
	if segundos_pasados == 18:
		tubo6()
	if segundos_pasados == 19:
		tubo7()
	if segundos_pasados == 20:
		tubo8()
	if segundos_pasados == 21:
		tubo9()
	if segundos_pasados == 22:
		tubo10()
	if segundos_pasados == 23:
		tubo11()
	if segundos_pasados == 24:
		tubo12()
	if segundos_pasados == 30:
		$Jugador/Camera2D/CambioEscena.playing = true
		$Jugador/Camera2D/CambioEscena.visible = true
		$temporizadorEspera.wait_time = 1
		$temporizadorEspera.one_shot = true
		$temporizadorEspera.connect("timeout", self, "_on_temporizador_espera_timeoutES")
		$temporizadorEspera.start()
		
	if UsuarioGlobal.ganadoJefe2 == false:
		get_tree().change_scene("res://FinalJefe/Perdida.tscn")
	
	$Jugador/Camera2D/HUD/tiempo.text = str(segundos_pasados)
	
func tubo1():
	$Jefe/tubo1.visible = true
	var px = $Jefe/tubo1.position.x
	var py = $Jefe/tubo1.position.y
	for i in range (1,140):
		print(py)
		py=py+1
		$Jefe/tubo1.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$Jefe/tubo1.visible = false
	$Jefe/tubo1.position = Vector2(0,0)
	
func tubo2():
	$secuas1/tubo1.visible = true
	var px = $secuas1/tubo1.position.x
	var py = $secuas1/tubo1.position.y
	for i in range (1,50):
		print(py)
		py=py+1
		$secuas1/tubo1.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas1/tubo1.visible = false
	$secuas1/tubo1.position = Vector2(0,0)
	
func tubo3():
	$secuas2/tubo1.visible = true
	var px = $secuas2/tubo1.position.x
	var py = $secuas2/tubo1.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas2/tubo1.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas2/tubo1.visible = false
	$secuas2/tubo1.position = Vector2(0,0)
	
func tubo4():
	$secuas3/tubo1.visible = true
	var px = $secuas3/tubo1.position.x
	var py = $secuas3/tubo1.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas3/tubo1.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas3/tubo1.visible = false
	$secuas3/tubo1.position = Vector2(0,0)
	
func tubo5():
	$secuas1/tubo2.visible = true
	var px = $secuas1/tubo2.position.x
	var py = $secuas1/tubo2.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas1/tubo2.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas1/tubo2.visible = false
	$secuas1/tubo2.position = Vector2(0,0)
	
func tubo6():
	$secuas3/tubo2.visible = true
	var px = $secuas3/tubo2.position.x
	var py = $secuas3/tubo2.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas3/tubo2.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas3/tubo2.visible = false
	$secuas3/tubo2.position = Vector2(0,0)
	
func tubo7():
	$Jefe/tubo2.visible = true
	var px = $Jefe/tubo2.position.x
	var py = $Jefe/tubo2.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$Jefe/tubo2.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$Jefe/tubo2.visible = false
	$Jefe/tubo2.position = Vector2(0,0)
	
func tubo8():
	$secuas1/tubo3.visible = true
	var px = $secuas1/tubo3.position.x
	var py = $secuas1/tubo3.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas1/tubo3.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas1/tubo3.visible = false
	$secuas1/tubo3.position = Vector2(0,0)
	
func tubo9():
	$secuas3/tubo3.visible = true
	var px = $secuas3/tubo3.position.x
	var py = $secuas3/tubo3.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas3/tubo3.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas3/tubo3.visible = false
	$secuas3/tubo3.position = Vector2(0,0)
	
func tubo10():
	$secuas2/tubo2.visible = true
	var px = $secuas2/tubo2.position.x
	var py = $secuas2/tubo2.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas2/tubo2.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas2/tubo2.visible = false
	$secuas2/tubo2.position = Vector2(0,0)
	
func tubo11():
	$Jefe/tubo3.visible = true
	var px = $Jefe/tubo3.position.x
	var py = $Jefe/tubo3.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$Jefe/tubo3.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$Jefe/tubo3.visible = false
	$Jefe/tubo3.position = Vector2(0,0)
	
func tubo12():
	$secuas2/tubo3.visible = true
	var px = $secuas2/tubo3.position.x
	var py = $secuas2/tubo3.position.y
	for i in range (1,120):
		print(py)
		py=py+1
		$secuas2/tubo3.position = Vector2(px,py)
		yield(get_tree().create_timer(0.05), "timeout")
	$secuas2/tubo3.visible = false
	$secuas2/tubo3.position = Vector2(0,0)
	

func _on_areaTubo_area_entered(area):
	UsuarioGlobal.ganadoJefe2 = false
	
func _on_temporizador_espera_timeoutES():
	get_tree().change_scene("res://FinalJefe/Queretaro.tscn")

