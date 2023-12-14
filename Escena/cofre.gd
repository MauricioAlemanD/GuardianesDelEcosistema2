extends StaticBody2D

func _ready():
	$abierto.visible=false
	$cerrado.visible=true
	

func _on_llave_cofre_abierto():
	if Global.fangos_derrotados >= 5:
		$abierto.visible = true
		$cerrado.visible = false

		# Pausar la ejecución durante 2 segundos
		yield(get_tree().create_timer(1.0), "timeout")

		# Cambiar a la escena "CDMX.tscn"
		get_tree().change_scene("res://FinalJefe/CDMX.tscn")
