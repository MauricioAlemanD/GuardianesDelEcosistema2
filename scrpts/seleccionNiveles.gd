extends Control #Hereda de control


func _ready(): #Se crea e inicia el construcor de la escena
	
	if BgGuanajuato.playing == true or BgQueretaro.playing == true or BgHidalgo.playing == true or BgTlaxcala.playing == true or BgPuebla.playing == true or BgMorelos.playing == true or BgEdomex.playing == true or BgCdmx.playing == true :
		BgGuanajuato.stop()
		BgQueretaro.stop()
		BgHidalgo.stop()
		BgTlaxcala.stop()
		BgPuebla.stop()
		BgMorelos.stop()
		BgEdomex.stop()
		BgCdmx.stop()
		BgApertura.play()
	else:
		BgApertura.play()
		
	
	$SvgMexico/EventoGuanajuato.position = Vector2(1000,1000)
	$SvgMexico/EventoQueretaro.position = Vector2(1000,1000)
	$SvgMexico/EventoHidalgo.position = Vector2(1000,1000)
	$SvgMexico/EventoTlaxcala.position = Vector2(1000,1000)
	$SvgMexico/EventoPuebla.position = Vector2(1000,1000)
	$SvgMexico/EventoMorelos.position = Vector2(1000,1000)
	$SvgMexico/EventoMexico.position = Vector2(1000,1000)
	$SvgMexico/EventoCDMX.position = Vector2(1000,1000)
	
	
	if UsuarioGlobal.nivelActual == 'Guanajuato' or UsuarioGlobal.nivelActual == "" :
		$indicador.position = Vector2(344,124)
		$SvgMexico/EventoGuanajuato.position = Vector2(4.5,34)
	
	if UsuarioGlobal.nivelActual == 'Queretaro':
		$indicador.position = Vector2(448,124)
		$SvgMexico/EventoQueretaro.position = Vector2(7,-2.5)
		
	if UsuarioGlobal.nivelActual == 'Hidalgo':
		$indicador.position = Vector2(496,148)
		$SvgMexico/EventoHidalgo.position = Vector2(7,-3.005)
		
	if UsuarioGlobal.nivelActual == 'Tlaxcala':
		$indicador.position = Vector2(552,268)
		$SvgMexico/EventoTlaxcala.position = Vector2(23.071,19.007)
		
	if UsuarioGlobal.nivelActual == 'Puebla':
		$indicador.position = Vector2(592,340)
		$SvgMexico/EventoPuebla.position = Vector2(28,20)
		
	if UsuarioGlobal.nivelActual == 'Morelos':
		$indicador.position = Vector2(480,322)
		$SvgMexico/EventoMorelos.position = Vector2(5.005,34)
		
	if UsuarioGlobal.nivelActual == 'Estado de México':
		$indicador.position = Vector2(432,276)
		$SvgMexico/EventoMexico.position = Vector2(-4.995,21.995)
		
	if UsuarioGlobal.nivelActual == 'Ciudad de México':
		$indicador.position = Vector2(472,292)
		$SvgMexico/EventoCDMX.position = Vector2(3,22.995)
		
	$lblNombreUsuario.text = UsuarioGlobal.nombreUsuarioGlobal #Se añadde al texto de la etiqueta el valor del usuario global
	$lblUltimoNivel.text = "Último nivel : " + UsuarioGlobal.nivelActual

func _on_Button_pressed(): #Se crea el evento para el boton de salir
	get_tree().change_scene("res://Escena/MenuInicial.tscn") #Se cambia de la escena actual a la escena de inicio de sesion




func _on_AlmanaqueIco_pressed():
	get_tree().change_scene("res://mich/Diccionario.tscn") #Se cambia de la escena actual a la escena de inicio de sesion
