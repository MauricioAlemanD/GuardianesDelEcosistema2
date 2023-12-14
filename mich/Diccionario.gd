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


func _on_EnchiladasMineras_pressed():
	$ColorRect/lblInformacion.text


func _on_Guacamaya_pressed():
	$ColorRect/lblInformacion.text


func _on_Basilica_pressed():
	$ColorRect/lblInformacion.text


func _on_CallejonBeso_pressed():
	$ColorRect/lblInformacion.text


func _on_MuseoMomias_pressed():
	$ColorRect/lblInformacion.text


func _on_EnchiladasQueretanas_pressed():
	$ColorRect/lblInformacion.text = "Las Enchiladas Queretanas son una deliciosa especialidad de la región, rellenas de guisados auténticos y bañadas en una salsa picante que resalta los sabores tradicionales de Querétaro."


func _on_GorditasDeMAiz_pressed(): 
	$ColorRect/lblInformacion.text = " Las Gorditas de Maíz Quebrado son pequeñas delicias rellenas de ingredientes sabrosos que incluyen chicharrón, guisados y salsas, creando una experiencia culinaria única y reconfortante."


func _on_CerroCampana_pressed():
	$ColorRect/lblInformacion.text = ""


func _on_EstacionDeTren_pressed():
	$ColorRect/lblInformacion.text = ""


func _on_TemploPusisima_pressed():
	$ColorRect/lblInformacion.text= ""

func _on_GusanosMaguey_pressed():
	$ColorRect/lblInformacion.text= ""


func _on_Pastes_pressed():
	$ColorRect/lblInformacion.text= ""


func _on_Grutas_pressed():
	$ColorRect/lblInformacion.text= ""


func _on_Reserva_pressed():
	$ColorRect/lblInformacion.text


func _on_RioTula_pressed():
	$ColorRect/lblInformacion.text


func _on_TacosDeCanasta_pressed():
	$ColorRect/lblInformacion.text


func _on_Tlatlapas_pressed():
	$ColorRect/lblInformacion.text


func _on_CasaCultura_pressed():
	$ColorRect/lblInformacion.text


func _on_Catedral_pressed():
	$ColorRect/lblInformacion.text


func _on_PlazaToros_pressed():
	$ColorRect/lblInformacion.text


func _on_Cemita_pressed():
	$ColorRect/lblInformacion.text


func _on_ChileEnNogada_pressed():
	$ColorRect/lblInformacion.text


func _on_RuedaFortuna_pressed():
	$ColorRect/lblInformacion.text


func _on_PiramideCholula_pressed():
	$ColorRect/lblInformacion.text


func _on_SantuarioGuadalupe_pressed():
	$ColorRect/lblInformacion.text


func _on_Cecina_pressed():
	$ColorRect/lblInformacion.text


func _on_ChilesRellenos_pressed():
	$ColorRect/lblInformacion.text


func _on_Tequesquitengo_pressed():
	$ColorRect/lblInformacion.text

func _on_CentroHistorico_pressed():
	$ColorRect/lblInformacion.text


func _on_GuajoloteEnSalsaVerde_pressed():
	$ColorRect/lblInformacion.text


func _on_QuesadillasDEHongos_pressed():
	$ColorRect/lblInformacion.text


func _on_ArcosTepotzotlan_pressed():
	$ColorRect/lblInformacion.text


func _on_PiramideTeotihuacan_pressed():
	$ColorRect/lblInformacion.text


func _on_TorresSatelite_pressed():
	$ColorRect/lblInformacion.text


func _on_TacosPastor_pressed():
	$ColorRect/lblInformacion.text


func _on_Metro_pressed():
	$ColorRect/lblInformacion.text


func _on_BellasArtes_pressed():
	$ColorRect/lblInformacion.text
