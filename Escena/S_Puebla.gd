extends Node2D
var botonPresionado1 = ""
var botonPresionado2 = ""
var cuadrosCorrectos = 0
var label : Label
var tween : Tween
func _ready():
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn1.text = "Habla con los habitantes."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn2.text = "Explora el mapa."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn3.text = "Ayuda al falso escorpión a encontrarse a si mismo."
	$Jugador/Camera2D/juego/ICONOFAIL.visible = false
	
	BgApertura.stop()
	BgPuebla.play()

	UsuarioGlobal.nivelActual = "Puebla"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Puebla"
	$Jugador/Camera2D/juego.visible = false
	$Jugador/Camera2D/CambioEscena.visible = false
	$Jugador/Camera2D/juego/Label.visible = false
	label = $Jugador/Camera2D/juego/Label
	tween = Tween.new()
	add_child(tween)
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
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Dedica tiempo para ti, valórate y atiende tus necesidades. Realiza actividades que te hagan sentir bien física y emocionalmente."
	
	if NPC == 2:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Evita compararte constantemente con los demás y en cambio, concéntrate en tus propios logros."
		
	if NPC == 3:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Aprende a decir NO cuando sea necesario y establece límites claros en tus relaciones y actividades."
	
	
	$Jugador/Camera2D/HUD/mnuTexto.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	
	cerrarTexto.start()
func _on_tiempo_expirado():
	$Jugador/Camera2D/HUD/mnuTexto.visible = false
func _on_btn01_pressed():
	botonPresionado1 = "0_0"
func _on_btn02_pressed():
	botonPresionado1 = "0_1"
func _on_btn03_pressed():
	botonPresionado1 = "0_2"
func _on_btn04_pressed():
	botonPresionado1 = "0_3"
func _on_btn05_pressed():
	botonPresionado1 = "1_0"
func _on_btn06_pressed():
	botonPresionado1 = "1_1"
func _on_btn07_pressed():
	botonPresionado1 = "1_2"
func _on_btn08_pressed():
	botonPresionado1 = "1_3"
func _on_btn09_pressed():
	botonPresionado1 = "2_0"
func _on_btn10_pressed():
	botonPresionado1 = "2_1"
func _on_btn11_pressed():
	botonPresionado1 = "2_2"
func _on_btn12_pressed():
	botonPresionado1 = "2_3"
func _on_btn14_pressed():
	botonPresionado1 = "3_1"
func _on_btn15_pressed():
	botonPresionado1 = "3_2"
func _on_btn16_pressed():
	botonPresionado1 = "3_3"
func _on_btn13_pressed():
	botonPresionado1 = "3_0"
func _on_btnm01_pressed():
	botonPresionado2 = "0_0"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite0_0.position = Vector2(284, 25)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm02_pressed():
	botonPresionado2 = "0_1"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite0_1.position = Vector2(412, 25)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm03_pressed():
	botonPresionado2 = "0_2"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite0_2.position = Vector2(540, 25)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm04_pressed():
	botonPresionado2 = "0_3"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite0_3.position = Vector2(668, 25)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm05_pressed():
	botonPresionado2 = "1_0"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite1_0.position = Vector2(284, 153)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm06_pressed():
	botonPresionado2 = "1_1"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite1_1.position = Vector2(412, 153)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm07_pressed():
	botonPresionado2 = "1_2"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite1_2.position = Vector2(540, 153)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm08_pressed():
	botonPresionado2 = "1_3"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite1_3.position = Vector2(668, 153)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm09_pressed():
	botonPresionado2 = "2_0"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite2_0.position = Vector2(284, 281)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm10_pressed():
	botonPresionado2 = "2_1"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite2_1.position = Vector2(412, 281)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm11_pressed():
	botonPresionado2 = "2_2"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite2_2.position = Vector2(540, 281)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm12_pressed():
	botonPresionado2 = "2_3"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite2_3.position = Vector2(668, 281)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm13_pressed():
	botonPresionado2 = "3_0"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite3_0.position = Vector2(284, 409)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm15_pressed():
	botonPresionado2 = "3_2"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite3_2.position = Vector2(540, 409)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm14_pressed():
	botonPresionado2 = "3_1"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite3_1.position = Vector2(412, 409)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func _on_btnm16_pressed():
	botonPresionado2 = "3_3"
	if botonPresionado1 == botonPresionado2:
		$Jugador/Camera2D/juego/Sprite3_3.position = Vector2(668, 409)
		cuadrosCorrectos=cuadrosCorrectos+1
	corroborarPosiciones()
func corroborarPosiciones():
	print(cuadrosCorrectos)
	if cuadrosCorrectos == 16:
		$Jugador/Camera2D/juego/Mosaico.visible = false
		$Jugador/Camera2D/CambioEscena.playing = true
		$Jugador/Camera2D/CambioEscena.visible = true
		$temporizadorEspera.wait_time = 1
		$temporizadorEspera.one_shot = true
		$temporizadorEspera.connect("timeout", self, "_on_temporizador_espera_timeoutES")
		$temporizadorEspera.start()
			
	botonPresionado1 = ""
	botonPresionado2 = ""
func _on_eventoJefe_area_entered(area):
	
	$Jugador/Camera2D/juego.visible = true
	$Jugador/Camera2D/juego/Label.visible = true
	etiquetaOn()
func etiquetaOn():
	
	tween.interpolate_property(label, "modulate:a", 0, 1, 10, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_callback(self, 2.5, "_on_fade_in_complete")
	tween.interpolate_property(label, "modulate:a", 1, 0, 10, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_callback(self, 5, "_on_fade_out_complete")

	# Iniciamos la animación
	tween.start()
func _on_fade_in_complete():
	# La animación de aparición ha finalizado, podemos realizar acciones adicionales aquí
	print("Aparición completa")
func _on_fade_out_complete():
	# La animación de desaparición ha finalizado, podemos realizar acciones adicionales aquí
	print("Desaparición completa")
func _on_temporizador_espera_timeoutES():
	get_tree().change_scene("res://FinalJefe/Puebla.tscn")


func _on_Button_pressed():
	$Jugador/Camera2D/juego.visible = false
