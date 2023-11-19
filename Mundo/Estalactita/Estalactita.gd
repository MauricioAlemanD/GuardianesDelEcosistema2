extends Node2D

func _ready():
	
	var animated_sprite : AnimatedSprite = $AnimatedSprite
	animated_sprite.frame = 0
	animated_sprite.play()
	# Usa call_deferred para agregar el Timer en el próximo ciclo de procesamiento
	call_deferred("_setup_tiempo_evento_perder")
	
func _setup_tiempo_evento_perder():
	var tiempoEventoPerder = Timer.new()
	tiempoEventoPerder.wait_time = 2
	tiempoEventoPerder.one_shot = true
	get_tree().get_root().add_child(tiempoEventoPerder)

	tiempoEventoPerder.connect("timeout", self, "_on_tiempo_expirado")
	tiempoEventoPerder.start()

func _on_tiempo_expirado():
	$Area2D/CollisionShape2D.position = Vector2(0,0)

func _on_Area2D_area_entered(area):
	
	UsuarioGlobal.ganadoJefe1 = false
