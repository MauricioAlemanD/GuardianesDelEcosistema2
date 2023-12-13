extends Node2D


func _ready():
	$lblJugador.text = UsuarioGlobal.nombreUsuarioGlobal
	$lblNivel.text = UsuarioGlobal.nivelActual
	$mnuMisiones.visible = false
	$mnuPausa.visible = false
	$mnuTexto.visible = false


func _on_btnAjustes_pressed():
	print("Ajustes")
	$mnuPausa.visible = true


func _on_btnMisiones_pressed():
	print("Misiones")
	$mnuMisiones.visible = true


func _on_btnSalir_pressed():
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn") 


func _on_btnGuardarPartida_pressed():
	UsuarioGlobal.guardar_progreso()


func _on_btnContinuar_pressed():
	$mnuTexto.visible = false
	$mnuPausa.visible = false
	$mnuMisiones.visible = false


func _on_btnContinuar_mouse_entered():
	$HitSound.play()

func _on_btnSalir_mouse_entered():
	$HitSound.play()

func _on_btnGuardarPartida_mouse_entered():
	$HitSound.play()

func _on_btnAjustes_mouse_entered():
	$HitSound.play()
	
func _on_btnMisiones_mouse_entered():
	$HitSound.play()
