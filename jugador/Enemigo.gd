extends KinematicBody2D

var velocidad=100
var velocidad_persecucion = 70
var player_chase=false
var player=null
var push_distance = 50
var push_force = 1000

var health=100
var player_inattack_zone=false

var can_take_damage=true

func _physics_process(delta):
	deal_with_damage()
	update_health()
	if player_chase:
		var direction = (player.position - position).normalized()
		move_and_slide(direction * velocidad)
		#position+=(player.position-position)/velocidad
		$AnimatedSprite.play("walk")
		#if(player.position.x-position.x)<0:
		if direction.x < 0:
			$AnimatedSprite.flip_h=false
		else:
			$AnimatedSprite.flip_h=true
	else:
		$AnimatedSprite.play("normal")

func _on_detection_area_body_entered(body):
	player=body
	player_chase=true

func _on_detection_area_body_exited(body):
	player=null
	player_chase=false
	
func enemy():
	pass



func _on_enemy_hitbox_body_entered(body):
	if body.has_method("player"):
		player_inattack_zone=true


func _on_enemy_hitbox_body_exited(body):
	if body.has_method("player"):
		player_inattack_zone=false
		
func deal_with_damage():
	if player_inattack_zone and Global.player_current_attack==true:
		if can_take_damage==true:
			health=health-20
			$take_damage_cooldown.start()
			can_take_damage=false
			print("enemigo salud= ",health)
			if health<=0:
				self.queue_free()


func _on_take_damage_cooldown_timeout():
	can_take_damage=true
	
func update_health():
	var healthbar=$HealthBar
	healthbar.value=health
	
	if health>=100:
		healthbar.visible=false
	else:
		healthbar.visible=true


