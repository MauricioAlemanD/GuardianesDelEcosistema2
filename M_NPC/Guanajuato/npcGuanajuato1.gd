extends Node2D
var cuadro = ""
func _ready():
	UsuarioGlobal.cuadroTexto = "La zona ha sido dañada"


func _on_npc_Area_area_entered(area):
	print("Texto")
	var hud_scene = preload("res://Escena/HUD.tscn").instance()
	add_child(hud_scene)
	hud_scene.emit_signal("mostrar_cuadro")
