extends Node2D

var ultimo_nivel = UsuarioGlobal.nivelActual
func _ready():

	if ultimo_nivel == 'Guanajuato':
		$ScrollContainer/Control/pnlGuanajuato.visible = true
	
	if ultimo_nivel == 'Queretaro':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		
	if ultimo_nivel == 'Hidalgo':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		
	if ultimo_nivel == 'Tlaxcala':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		$ScrollContainer/Control/pnlHidalgo.visible = true 
		$ScrollContainer/Control/pnlTlaxcala.visible = true 
		
	if ultimo_nivel == 'Puebla':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		$ScrollContainer/Control/pnlHidalgo.visible = true 
		$ScrollContainer/Control/pnlTlaxcala.visible = true 
		$ScrollContainer/Control/pnlPuebla.visible = true 
		
	if ultimo_nivel == 'Morelos':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		$ScrollContainer/Control/pnlHidalgo.visible = true 
		$ScrollContainer/Control/pnlTlaxcala.visible = true 
		$ScrollContainer/Control/pnlPuebla.visible = true 
		$ScrollContainer/Control/pnlMorelos.visible = true 
		
	if ultimo_nivel == 'Estado de México':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		$ScrollContainer/Control/pnlHidalgo.visible = true 
		$ScrollContainer/Control/pnlTlaxcala.visible = true 
		$ScrollContainer/Control/pnlPuebla.visible = true 
		$ScrollContainer/Control/pnlMorelos.visible = true 
		$ScrollContainer/Control/pnlEdomex.visible = true 
		
	if ultimo_nivel == 'Ciudad de México':
		$ScrollContainer/Control/pnlGuanajuato.visible = true 
		$ScrollContainer/Control/pnlQueretaro.visible = true 
		$ScrollContainer/Control/pnlHidalgo.visible = true 
		$ScrollContainer/Control/pnlTlaxcala.visible = true 
		$ScrollContainer/Control/pnlPuebla.visible = true 
		$ScrollContainer/Control/pnlMorelos.visible = true 
		$ScrollContainer/Control/pnlEdomex.visible = true 
		$ScrollContainer/Control/pnlCdmx.visible = true 
		
		
		
		
		


func _on_Label2_pressed():
	get_tree().change_scene("res://Escena/seleccionNiveles.tscn")
