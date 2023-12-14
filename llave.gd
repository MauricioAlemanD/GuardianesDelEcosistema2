extends StaticBody2D

signal cofre_abierto

var llave_recogida=false
var dentro_del_cofre=false


func _on_Area2D_body_entered(body:PhysicsBody2D):
	if llave_recogida==false:
		llave_recogida=true
		$Sprite.queue_free()

func _process(delta):
	if llave_recogida==true:
		if dentro_del_cofre==true:
			
			print("cofre abierto")
			emit_signal("cofre_abierto")


func _on_zona_cofre_body_entered(body:PhysicsBody2D):
	dentro_del_cofre=true
	print("dentro de la zona del cofre")


func _on_zona_cofre_body_exited(body:PhysicsBody2D):
	dentro_del_cofre=false
	print("fuera de la zona del cofre")
	
