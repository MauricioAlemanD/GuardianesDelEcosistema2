extends StaticBody2D

func _ready():
	$abierto.visible=false
	$cerrado.visible=true
	

func _on_llave_cofre_abierto():
	$abierto.visible=true
	$cerrado.visible=false
