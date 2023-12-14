extends StaticBody2D

func _ready():
	$abierto.visible=false
	$cerrado.visible=true
	

func _on_llave_cofre_abierto():
	if Global.fangos_derrotados >= 5:
		$abierto.visible=true
		$cerrado.visible=false

