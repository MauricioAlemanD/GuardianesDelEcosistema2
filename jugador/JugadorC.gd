extends KinematicBody2D

onready var jugador=$"."
const aceleracion =500
const velocidadMaxima = 200
const friccion = 500
onready var animacion=$AnimatedSprite

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		jugador.position.x+=velocidadMaxima*delta
		animacion.play("CorrerDerecha")
	elif Input.is_action_pressed("ui_left"):
		jugador.position.x-=velocidadMaxima*delta
		animacion.play("CorrerIzquierda")
	elif Input.is_action_pressed("ui_up"):
		jugador.position.y-=velocidadMaxima*delta
		animacion.play("CorrerArriba")
	elif Input.is_action_pressed("ui_down"):
		jugador.position.y+=velocidadMaxima*delta
		animacion.play("CorrerAbajo")
	else:
		animacion.play("EstaticoDerecha")
