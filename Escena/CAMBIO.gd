extends Node2D

onready var cambio=$"."
onready var animacion=$AnimationPlayer

var siguiente_nivel

var cdmx=preload("res://Escena/S_CDMX.tscn").instance()
var subterra=preload("res://Escena/Subterraneo.tscn").instance()

func _ready():
	cambio.add_child(cdmx)
	
func _verificar_nivel():
	match siguiente_nivel:
		"subterra":
			siguiente_nivel=subterra
	animacion.play("Saliendo")
	
func _siguiente_nivel():
	var nivel=siguiente_nivel
	cambio.add_child(nivel)

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name=="Saliendo":
		$AnimationPlayer.play("Entrada")
	if anim_name=="Entrada":
		_siguiente_nivel()
