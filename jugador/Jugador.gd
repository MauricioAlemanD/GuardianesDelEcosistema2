extends KinematicBody2D

var velocidad = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocidad.x = 5
	
	elif Input.is_action_pressed("ui_left"):
		velocidad.x = -5
	
	elif Input.is_action_pressed("ui_down"):
		velocidad.y = +5
	
	elif Input.is_action_pressed("ui_up"):
		velocidad.y = -5
	
	else:
		velocidad.x = 0
		velocidad.y = 0
	
	move_and_collide(velocidad)
