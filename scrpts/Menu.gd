extends Control



func _on_btnJugar_pressed():
	get_tree().change_scene("res://Escena/Partida.tscn")


func _on_btnSalir_pressed():
	get_tree().quit()

