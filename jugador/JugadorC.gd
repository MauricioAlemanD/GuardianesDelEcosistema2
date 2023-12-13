extends KinematicBody2D

const velocidad=200
onready var animacion=$AnimatedSprite
var actual_direccion="nada"

var Subterra=null setget set_subterra

var enemy_inattack_range=false
var enemy_attack_cooldown=true
var health=100
var player_alive=true

var attack_ip=false

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
		Global.player_pos=global_position
		Subterra.enter()

func _physics_process(delta):
	player_movement(delta)
	enemy_attack()
	attack()
	update_health()
	
	if health<=0:
		player_alive=false #respawn
		health=0
		print("mataaaaron mataron a un inocenteeeeeee")
		self.queue_free()
	
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
			if attack_ip==false:
				animacion.play("EstaticoDerecha")
	if dir=="izquierda":
		if movimiento==1:
			animacion.play("CorrerIzquierda")
		elif movimiento==0:
			if attack_ip==false:
				animacion.play("EstaticoIzquierda")
	if dir=="abajo":
		if movimiento==1:
			animacion.play("CorrerAbajo")
		elif movimiento==0:
			if attack_ip==false:
				animacion.play("EstaticoAbajo")
	if dir=="arriba":
		if movimiento==1:
			animacion.play("CorrerArriba")
		elif movimiento==0:
			if attack_ip==false:
				animacion.play("EstaticoArriba")

func player():
	pass
	
func _on_player_hitbox_body_entered(body):
	if body.has_method("enemy"):
		enemy_inattack_range=true
	

func _on_player_hitbox_body_exited(body):
	if body.has_method("enemy"):
		enemy_inattack_range=false
		
func enemy_attack():
	if enemy_inattack_range and enemy_attack_cooldown==true:
		health=health-10
		enemy_attack_cooldown=false
		$cooldown.start()
		print(health)


func _on_cooldown_timeout():
	enemy_attack_cooldown=true
	
func attack():
	var dir2=actual_direccion
	
	if Input.is_action_just_pressed("ataq"):
		Global.player_current_attack=true
		attack_ip=true
		if dir2=="derecha":
			$AnimatedSprite.play("Ataque")
			$deal_attack_timer.start()
		if dir2=="izquierda":
			$AnimatedSprite.play("Ataque")
			$deal_attack_timer.start()
		if dir2=="abajo":
			$AnimatedSprite.play("Ataque")
			$deal_attack_timer.start()
		if dir2=="arriba":
			$AnimatedSprite.play("Ataque")
			$deal_attack_timer.start()


func _on_deal_attack_timer_timeout():
	$deal_attack_timer.stop()
	Global.player_current_attack=false
	attack_ip=false

func update_health():
	var healthbar=$HealthBar
	healthbar.value=health
	
	if health>=100:
		healthbar.visible=false
	else:
		healthbar.visible=true
	
func _on_regin_timer_timeout():
	if health<100:
		health=health+10
		if health>100:
			health=100
	if health<=0:
		health=0
	
	
