extends KinematicBody2D

const aceleracion =500
const velocidadMaxima = 200
const friccion = 500

var velocidad = Vector2.ZERO

func _physics_process(delta):
	
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocidad += input_vector * aceleracion * delta
		velocidad = velocidad.clamped(velocidadMaxima * delta)
	else:
		velocidad = velocidad.move_toward(Vector2.ZERO,friccion * delta)
		
	
	move_and_collide(velocidad)
