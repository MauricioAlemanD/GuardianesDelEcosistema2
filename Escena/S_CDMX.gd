extends Node2D

#func _ready():
#	$YSort/JugadorC.global_position=Global.player_pos
#	UsuarioGlobal.nivelActual = "Ciudad de méxico"
#	$Jugador/Camera2D/HUD/lblNivel.text = "Nivel ciudad de méxico"
#
#func _on_Area2D_area_entered(area):
#	var NPC
#
#	var coordenadas_npc1 = Vector2($NPC1.position)
#	var coordenadas_npc2 = Vector2($NPC2.position)
#	var coordenadas_npc3 = Vector2($NPC3.position)
#
#	var margen = 0.1
#	var coordenadas_personaje = $Jugador.position
#
#	if coordenadas_personaje.x > coordenadas_npc1.x - coordenadas_npc1.x * margen and coordenadas_personaje.x < coordenadas_npc1.x + coordenadas_npc1.x * margen and coordenadas_personaje.y > coordenadas_npc1.y - coordenadas_npc1.y * margen and coordenadas_personaje.y < coordenadas_npc1.y + coordenadas_npc1.y * margen:
#		print("El personaje está cerca de NPC1.")
#		NPC = 1
#
#	if coordenadas_personaje.x > coordenadas_npc2.x - coordenadas_npc2.x * margen and coordenadas_personaje.x < coordenadas_npc2.x + coordenadas_npc2.x * margen and coordenadas_personaje.y > coordenadas_npc2.y - coordenadas_npc2.y * margen and coordenadas_personaje.y < coordenadas_npc2.y + coordenadas_npc2.y * margen:
#		print("El personaje está cerca de NPC2.")
#		NPC = 2
#
#	if coordenadas_personaje.x > coordenadas_npc3.x - coordenadas_npc3.x * margen and coordenadas_personaje.x < coordenadas_npc3.x + coordenadas_npc3.x * margen and coordenadas_personaje.y > coordenadas_npc3.y - coordenadas_npc3.y * margen and coordenadas_personaje.y < coordenadas_npc3.y + coordenadas_npc3.y * margen:
#		print("El personaje está cerca de NPC3.")
#		NPC = 3
#
#	if NPC == 1:
#		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Habitante: En el centro histórico de Guanajuato, hay un callejón estrecho conocido como el ''Callejón del Beso''. La leyenda cuenta que dos amantes de diferentes clases sociales se encontraban en balcones opuestos y, al no poder casarse, se besaron en este callejón."
#
#	if NPC == 2:
#		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Habitante: En las entrañas de esta región, la despiadada minería ha dejado tras de sí materiales letales que acechan tanto a nosotros como a la vida silvestre. Lamentablemente, los dueños de las empresas mineras parecen incapaces de sentir la tragedia que provocan, mostrando una indiferencia cruel ante el daño irreparable que infligen a nuestra tierra."
#
#	if NPC == 3:
#		$Jugador/Camera2D/HUD/mnuTexto/lblMsn1.text = "Mis abuelos me platicaban como antes había mas flora y fauna en esta zona, pero desde que llegó la industria minera todo empezó a morir."
#
#
#	$Jugador/Camera2D/HUD/mnuTexto.visible = true
#	var cerrarTexto = Timer.new()
#	cerrarTexto.wait_time = 10
#	cerrarTexto.one_shot = true
#	get_tree().get_root().add_child(cerrarTexto)
#	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")
#
#	cerrarTexto.start()
#
#func _on_tiempo_expirado():
#	$Jugador/Camera2D/HUD/mnuTexto.visible = false

