extends KinematicBody2D

const aceleracion =500
const velocidadMaxima = 200
const friccion = 500

enum{
	
	MOVE,
	PICK,
	ATAQ
}

var state = MOVE
var velocidad = Vector2.ZERO

onready var sprite=$Sprite
onready var sprite2=$Sprite2
onready var animacionJugador = $AnimationPlayer
onready var arbolAnimacion = $AnimationTree
onready var estadoAnimacion = arbolAnimacion.get("parameters/playback")

func _ready():
	arbolAnimacion.active = true
	sprite2.visible=false

func _process(delta):
	
	match state:
		MOVE:
			move_state(delta)
		PICK:
			pick_state(delta)
		ATAQ:
			ataq_state(delta)
	


func move_state(delta):
	
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		
		arbolAnimacion.set("parameters/Estatico/blend_position",input_vector)
		arbolAnimacion.set("parameters/Correr/blend_position",input_vector)
		arbolAnimacion.set("parameters/Pick/blend_position",input_vector)
		arbolAnimacion.set("parameters/Ataque/blend_position",input_vector)
		estadoAnimacion.travel("Correr")
		velocidad += input_vector * aceleracion * delta
		velocidad = velocidad.clamped(velocidadMaxima * delta)
	else:
		estadoAnimacion.travel("Estatico")
		velocidad = velocidad.move_toward(Vector2.ZERO,friccion * delta)
		
	
	if Input.is_action_just_pressed("pick"):
		state = PICK
		
	if Input.is_action_just_pressed("ataq"):
		state = ATAQ

	move_and_collide(velocidad)

func pick_state(delta):
	velocidad = Vector2.ZERO
	estadoAnimacion.travel("Pick")
	
func ataq_state(delta):
	velocidad = Vector2.ZERO
	estadoAnimacion.travel("Ataque")
	sprite2.visible = true
	sprite.visible = false

func Ataque_animation_finished():
	state = MOVE
	sprite.visible=true
	sprite2.visible=false

func pick_animation_finished():
	state = MOVE
