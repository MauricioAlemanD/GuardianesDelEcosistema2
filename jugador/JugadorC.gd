extends KinematicBody2D

const velocidad=200
onready var animacion=$AnimatedSprite
var actual_direccion="nada"

var Subterra=null setget set_subterra

func set_subterra(subter):
	print("set_subterra llamado")
	if subter!=null:
		$Tecla.show()
		$Tecla/AnimTecla.play("TeclaE")
	else:
		$Tecla.hide()
		$Tecla/AnimTecla.stop()
	Subterra=subter

func _ready():
	$AnimatedSprite.play("EstaticoDerecha")
	set_subterra(null)
	
func _unhandled_input(event):
	if event is InputEventKey and event.is_action_pressed("entrar") and Subterra!=null:
		Subterra.enter()

func _physics_process(delta):
	player_movement(delta)
	
func player_movement(delta):
	var velocity = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		actual_direccion="derecha"
		play_animation(1)
		velocity.x=velocidad
		velocity.y=0
	elif Input.is_action_pressed("ui_left"):
		actual_direccion="izquierda"
		play_animation(1)
		velocity.x=-velocidad
		velocity.y=0
	elif Input.is_action_pressed("ui_down"):
		actual_direccion="abajo"
		play_animation(1)
		velocity.y=velocidad
		velocity.x=0
	elif Input.is_action_pressed("ui_up"):
		actual_direccion="arriba"
		play_animation(1)
		velocity.y=-velocidad
		velocity.x=0
	else:
		play_animation(0)
		velocity.x=0
		velocity.y=0
	
	move_and_slide(velocity)

func play_animation(movimiento):
	var dir=actual_direccion
	
	if dir=="derecha":
		if movimiento==1:
			animacion.play("CorrerDerecha")
		elif movimiento==0:
			animacion.play("EstaticoDerecha")
	if dir=="izquierda":
		if movimiento==1:
			animacion.play("CorrerIzquierda")
		elif movimiento==0:
			animacion.play("EstaticoIzquierda")
	if dir=="abajo":
		if movimiento==1:
			animacion.play("CorrerAbajo")
		elif movimiento==0:
			animacion.play("EstaticoAbajo")
	if dir=="arriba":
		if movimiento==1:
			animacion.play("CorrerArriba")
		elif movimiento==0:
			animacion.play("EstaticoArriba")
