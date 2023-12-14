extends Node2D
var entered=false
var outside="res://Escena/S_CDMX.tscn"

func _ready():
	UsuarioGlobal.nivelActual = "Ciudad de méxico"
	$JugadorC/HUD/lblNivel.text = "Subterraneo"
	
	$JugadorC/HUD/mnuMisiones/lblMsn2.text = "Toma la llave"
	$JugadorC/HUD/mnuMisiones/lblMsn3.text = "Derrota al fango."
	$JugadorC/HUD/mnuMisiones/lblMsn1.text = "Abre el cofre."
	
func _on_Area2D_area_entered(area):
	var coordenadas_npc1 = Vector2($Salamandra.position)

	var margen = 0.1
	var coordenadas_personaje = $JugadorC.position

	if coordenadas_personaje.x > coordenadas_npc1.x - coordenadas_npc1.x * margen and coordenadas_personaje.x < coordenadas_npc1.x + coordenadas_npc1.x * margen and coordenadas_personaje.y > coordenadas_npc1.y - coordenadas_npc1.y * margen and coordenadas_personaje.y < coordenadas_npc1.y + coordenadas_npc1.y * margen:
		print("El personaje está cerca de la salamandra.")
		$JugadorC/HUD/mnuTexto/lblMsn2.text = "¿Por qué no te rindes?"


	$JugadorC/HUD/mnuTexto.visible = true
	var cerrarTexto = Timer.new()
	cerrarTexto.wait_time = 10
	cerrarTexto.one_shot = true
	get_tree().get_root().add_child(cerrarTexto)
	cerrarTexto.connect("timeout",self,"_on_tiempo_expirado")

	cerrarTexto.start()

func _on_tiempo_expirado():
	print("menu")
	$JugadorC/HUD/mnuTexto.visible = false
	
	
	
	
	
func _on_exit_body_entered(body):
		get_tree().change_scene(outside)
		
func _on_exit_body_exited(body):
	pass
	

