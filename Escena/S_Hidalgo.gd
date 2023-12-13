extends Node2D

var combinacion = "35142"
var combinacionValida = ""
var contadorBotones = 0

func _ready():
	
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn1.text = "Habla con los habitantes."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn2.text = "Recuerda el orden de los números."
	$Jugador/Camera2D/HUD/mnuMisiones/lblMsn3.text = "Ayuda al puercoespin con su problema."
	
	BgApertura.stop()
	BgHidalgo.play()
	
	UsuarioGlobal.nivelActual = "Hidalgo"
	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel Hidalgo"
	$Jugador/Camera2D/Reto.visible = false
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
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Habitante: Ya no puedo mas con el olor que viene del agua del río, hace años que apesta fatal."
	
	if NPC == 2:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "El el señor puercoespin que esta en la reserva natural ha estado cortando muchos arboles ultimamente."
		
	if NPC == 3:
		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Un día escuche al señor puercoespin diciendo  3, 5, 1, 4, 2."
	
	
	$Jugador/Camera2D/HUD/mnuTexto.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
	
	cerrarTexto.start()

func _on_tiempo_expirado():
	$Jugador/Camera2D/HUD/mnuTexto.visible = false


func _on_btnPua1_pressed():
	combinacionValida = combinacionValida + "1"
	print(combinacionValida)
	$Jugador/Camera2D/Reto/PielHidalgo/Pua1.visible = false
	validarPuas()
func _on_btnPua2_pressed():
	combinacionValida = combinacionValida + "2"
	print(combinacionValida)
	$Jugador/Camera2D/Reto/PielHidalgo/Pua2.visible = false
	validarPuas()
func _on_btnPua3_pressed():
	combinacionValida = combinacionValida + "3"
	print(combinacionValida)
	$Jugador/Camera2D/Reto/PielHidalgo/Pua3.visible = false
	validarPuas()
func _on_btnPua4_pressed():
	combinacionValida = combinacionValida + "4"
	print(combinacionValida)
	$Jugador/Camera2D/Reto/PielHidalgo/Pua4.visible = false
	validarPuas()
func _on_btnPua5_pressed():
	combinacionValida = combinacionValida + "5"
	print(combinacionValida)
	$Jugador/Camera2D/Reto/PielHidalgo/Pua5.visible = false
	validarPuas()
func validarPuas():
	if combinacionValida.length() == 5:
		if combinacionValida == combinacion:
			print("Ganaste")
			$Jugador/Camera2D/CambioEscena.playing = true
			$Jugador/Camera2D/CambioEscena.visible = true
			$temporizadorEspera.wait_time = 1
			$temporizadorEspera.one_shot = true
			$temporizadorEspera.connect("timeout", self, "_on_temporizador_espera_timeoutES")
			$temporizadorEspera.start()
			
		else:
			print("Intenta de nuevo")
			$Jugador/Camera2D/Reto/PielHidalgo/Pua5.visible = true
			$Jugador/Camera2D/Reto/PielHidalgo/Pua4.visible = true
			$Jugador/Camera2D/Reto/PielHidalgo/Pua3.visible = true
			$Jugador/Camera2D/Reto/PielHidalgo/Pua2.visible = true
			$Jugador/Camera2D/Reto/PielHidalgo/Pua1.visible = true
			combinacionValida = ""


func _on_eventoJefe_area_entered(area):
	$Jugador/Camera2D/Reto.visible = true
func _on_temporizador_espera_timeoutES():
	get_tree().change_scene("res://FinalJefe/Hidalgo.tscn")
	


func _on_btnSalirPiel_pressed():
	$Jugador/Camera2D/Reto.visible = false
