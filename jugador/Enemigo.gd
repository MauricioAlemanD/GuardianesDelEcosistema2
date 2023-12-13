extends KinematicBody2D

var velocidad=55
var player_chase=false
var player=null

func _physics_process(delta):
	if player_chase:
		position+=(player.position-position)/velocidad
		$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("normal")

func _on_detection_area_body_entered(body):
	player=body
	player_chase=true

func _on_detection_area_body_exited(body):
	player=null
	player_chase=false
