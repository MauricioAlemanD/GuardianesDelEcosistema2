extends Node2D

func _ready():
#	$YSort/JugadorC.global_position=Global.player_pos
	UsuarioGlobal.nivelActual = "Ciudad de méxico"
	$YSort/JugadorC/HUD/lblNivel.text = "Nivel ciudad de méxico"
	
	$YSort/JugadorC/HUD/mnuMisiones/lblMsn2.text = "Habla con los habitantes."
	$YSort/JugadorC/HUD/mnuMisiones/lblMsn3.text = "Dirígete al metro subterráneo."
	$YSort/JugadorC/HUD/mnuMisiones/lblMsn1.text = "Explora la ciudad."

func _on_Area2D_area_entered(area):
	var NPC

	var coordenadas_npc1 = Vector2($NPC1.position)
	var coordenadas_npc2 = Vector2($NPC2.position)
	var coordenadas_npc3 = Vector2($NPC3.position)
	var coordenadas_npc4 = Vector2($NPC4.position)

	var margen = 0.1
	var coordenadas_personaje = $JugadorC.position

	if coordenadas_personaje.x > coordenadas_npc1.x - coordenadas_npc1.x * margen and coordenadas_personaje.x < coordenadas_npc1.x + coordenadas_npc1.x * margen and coordenadas_personaje.y > coordenadas_npc1.y - coordenadas_npc1.y * margen and coordenadas_personaje.y < coordenadas_npc1.y + coordenadas_npc1.y * margen:
		print("El personaje está cerca de NPC1.")
		NPC = 1

	if coordenadas_personaje.x > coordenadas_npc2.x - coordenadas_npc2.x * margen and coordenadas_personaje.x < coordenadas_npc2.x + coordenadas_npc2.x * margen and coordenadas_personaje.y > coordenadas_npc2.y - coordenadas_npc2.y * margen and coordenadas_personaje.y < coordenadas_npc2.y + coordenadas_npc2.y * margen:
		print("El personaje está cerca de NPC2.")
		NPC = 2

	if coordenadas_personaje.x > coordenadas_npc3.x - coordenadas_npc3.x * margen and coordenadas_personaje.x < coordenadas_npc3.x + coordenadas_npc3.x * margen and coordenadas_personaje.y > coordenadas_npc3.y - coordenadas_npc3.y * margen and coordenadas_personaje.y < coordenadas_npc3.y + coordenadas_npc3.y * margen:
		print("El personaje está cerca de NPC3.")
		NPC = 3

	if coordenadas_personaje.x > coordenadas_npc4.x - coordenadas_npc4.x * margen and coordenadas_personaje.x < coordenadas_npc4.x + coordenadas_npc4.x * margen and coordenadas_personaje.y > coordenadas_npc4.y - coordenadas_npc4.y * margen and coordenadas_personaje.y < coordenadas_npc4.y + coordenadas_npc4.y * margen:
		print("El personaje está cerca de NPC4.")
		NPC = 4

	if NPC == 1:
		$YSort/JugadorC/HUD/mnuTexto/lblMsn2.text = "Habitante: Ah... el palacio de Bellas Artes, que lugar tan magnífico ¿Sabías que a pesar de que combina varios estilos, como el Neoclásico, Art Decó y Art Nouveau, también mantiene relieves que representan escenas de la mitología prehispánica?"

	if NPC == 2:
		$YSort/JugadorC/HUD/mnuTexto/lblMsn2.text = "Habitante: ¡Cuidado! dicen que por ahí espantan. Un tal Fangue se llama...."

	if NPC == 3:
		$YSort/JugadorC/HUD/mnuTexto/lblMsn2.text = "Habitante: 21 millones de habitantes en la cdmx, pero nadie tan desvelado como tú mau, ya duermeee"
	if NPC == 4:
		$YSort/JugadorC/HUD/mnuTexto/lblMsn2.text = "Habitante: Xochimilco es famoso por sus canales donde se pueden alquilar trajineras, su importancia natural e histórica, han hecho que Xochimilco sea considerado Patrimonio de la Humanidad, curiosamente también es tu hogar... Ahora me siento mal por ti"


	$YSort/JugadorC/HUD/mnuTexto.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")

	cerrarTexto.start()

func _on_tiempo_expirado():
	print("menu")
	$YSort/JugadorC/HUD/mnuTexto.visible = false



func _on_cerrarTexto_timeout():
	pass # Replace with function body.


func _on_temporizadorEspera_timeout():
	pass # Replace with function body.
