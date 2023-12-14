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
	$ColorRect/lblInformacion.text = "Las Enchiladas Mineras, originarias de Guanajuato, se distinguen por su relleno de carne y su salsa espesa, proporcionando un festín de sabores que reflejan la riqueza gastronómica de la región minera."


func _on_Guacamaya_pressed():
	$ColorRect/lblInformacion.text = "La Guacamaya, un platillo típico de Guanajuato, es una torta rellena de carnitas bañada en una salsa picante, ofreciendo una combinación audaz y deliciosa que representa la tradición culinaria local."


func _on_Basilica_pressed():
	$ColorRect/lblInformacion.text = "La Basílica Colegiata de Nuestra Señora de Guanajuato es una magnífica iglesia que data del siglo XVIII, conocida por su arquitectura barroca y por albergar la imagen de la Virgen de Guanajuato."


func _on_CallejonBeso_pressed():
	$ColorRect/lblInformacion.text = "El Callejón del Beso es un estrecho pasaje en Guanajuato famoso por la leyenda que rodea a dos balcones enfrentados, donde se dice que los amantes pueden besarse para asegurar siete años de felicidad."


func _on_MuseoMomias_pressed():
	$ColorRect/lblInformacion.text = " El Museo de las Momias en Guanajuato alberga una impresionante colección de momias naturales, ofreciendo una experiencia única para aprender sobre la historia y la preservación de estos restos humanos."


func _on_EnchiladasQueretanas_pressed():
	$ColorRect/lblInformacion.text = "Las Enchiladas Queretanas son una deliciosa especialidad de la región, rellenas de guisados auténticos y bañadas en una salsa picante que resalta los sabores tradicionales de Querétaro."


func _on_GorditasDeMAiz_pressed(): 
	$ColorRect/lblInformacion.text = " Las Gorditas de Maíz Quebrado son pequeñas delicias rellenas de ingredientes sabrosos que incluyen chicharrón, guisados y salsas, creando una experiencia culinaria única y reconfortante."


func _on_CerroCampana_pressed():
	$ColorRect/lblInformacion.text = "El Cerro de la Campana en Querétaro es un mirador natural que ofrece impresionantes vistas panorámicas de la ciudad, proporcionando un espacio tranquilo para disfrutar de la naturaleza."


func _on_EstacionDeTren_pressed():
	$ColorRect/lblInformacion.text = "La Antigua Estación de Tren de Querétaro es un edificio histórico que refleja la importancia del ferrocarril en la región, ahora restaurado y utilizado como centro cultural y de eventos."


func _on_TemploPusisima_pressed():
	$ColorRect/lblInformacion.text= "La Parroquia de Casa del Santuario en Querétaro es una iglesia emblemática que combina estilos arquitectónicos, destacando por sus detalles artísticos y su importancia histórica en la región."

func _on_GusanosMaguey_pressed():
	$ColorRect/lblInformacion.text= "Los Gusanos de Maguey, un manjar exquisito, son larvas de mariposa que se consumen como parte de la gastronomía tradicional, destacando por su sabor único y textura crujiente."


func _on_Pastes_pressed():
	$ColorRect/lblInformacion.text= "Los Paste son empanadas rellenas de guisos variados, como papa con chorizo, creando un bocado delicioso que refleja la influencia culinaria europea en la gastronomía mexicana."


func _on_Grutas_pressed():
	$ColorRect/lblInformacion.text= "Las Grutas de Tolantongo son un complejo de cuevas y pozas termales en Hidalgo, rodeadas de paisajes impresionantes, ofreciendo a los visitantes una experiencia única de relajación y conexión con la naturaleza."


func _on_Reserva_pressed():
	$ColorRect/lblInformacion.text = "La Reserva de la Biosfera Barranca de Metztitlán en Hidalgo es un área natural protegida con una diversidad biológica notable, ofreciendo hábitats únicos y oportunidades para la observación de aves."


func _on_RioTula_pressed():
	$ColorRect/lblInformacion.text = "Río Tula es un sitio arqueológico en Hidalgo que contiene antiguas estructuras prehispánicas, incluyendo pirámides y esculturas, proporcionando una visión fascinante de la cultura mesoamericana."


func _on_TacosDeCanasta_pressed():
	$ColorRect/lblInformacion.text = "Los Tacos de Canasta son tacos prensados y rellenos con guisos suculentos, ideales para llevar, ofreciendo una opción conveniente y sabrosa en la cultura culinaria mexicana."


func _on_Tlatlapas_pressed():
	$ColorRect/lblInformacion.text  = "Las Tlatlapas son una deliciosa especialidad regional, consisten en masa de maíz rellena de ingredientes autóctonos, cocida en hojas de maíz para resaltar su sabor único."


func _on_CasaCultura_pressed():
	$ColorRect/lblInformacion.text  = "La Casa Cultural Tlaxcala es un espacio dedicado a la promoción y difusión de la cultura en Tlaxcala, albergando exposiciones, eventos artísticos y actividades que enriquecen la vida cultural de la comunidad."


func _on_Catedral_pressed():
	$ColorRect/lblInformacion.text  = "La Catedral de Nuestra Señora de la Asunción en Tlaxcala es un majestuoso edificio religioso que combina elementos barrocos y renacentistas, siendo un ícono arquitectónico e histórico de la región."


func _on_PlazaToros_pressed():
	$ColorRect/lblInformacion.text  = "La Plaza de Toros de Tlaxcala es un escenario tradicional donde se llevan a cabo corridas de toros, representando una parte de la cultura taurina en México y ofreciendo eventos que atraen a aficionados de todo el país"


func _on_Cemita_pressed():
	$ColorRect/lblInformacion.text  = "Las Cemitas son sándwiches tradicionales de Puebla, rellenos de carne, aguacate, queso y más, creando una experiencia gastronómica única y deliciosa."


func _on_ChileEnNogada_pressed():
	$ColorRect/lblInformacion.text  = "Los Chiles en Nogada son una exquisitez de la cocina mexicana, con chiles poblanos rellenos de picadillo, cubiertos con una salsa de nuez y esparcidos con granos de granada, representando los colores de la bandera."


func _on_RuedaFortuna_pressed():
	$ColorRect/lblInformacion.text  = "La Rueda de la Fortuna de Puebla, también conocida como la Estrella de Puebla, es una gigantesca noria que ofrece vistas panorámicas de la ciudad, convirtiéndose en un icono arquitectónico y turístico."


func _on_PiramideCholula_pressed():
	$ColorRect/lblInformacion.text  = "La Pirámide de Cholula es la estructura piramidal más grande del mundo por volumen, situada en Puebla, con una base que abarca varios campos de juego de fútbol y una rica historia prehispánica."


func _on_SantuarioGuadalupe_pressed():
	$ColorRect/lblInformacion.text  = "El Santuario de Guadalupe en Puebla es un templo dedicado a la Virgen de Guadalupe, destacando por su arquitectura neogótica y siendo un lugar de peregrinación importante en la región."


func _on_Cecina_pressed():
	$ColorRect/lblInformacion.text  = "La Cecina, carne de res curada y secada al sol, es un manjar de la gastronomía mexicana, resaltando por su sabor intenso y su textura deliciosa."


func _on_ChilesRellenos_pressed():
	$ColorRect/lblInformacion.text  = "Los Chiles Rellenos son chiles poblanos rellenos de picadillo o queso, cubiertos con una salsa de jitomate, creando una combinación de sabores y texturas que deleitan el paladar."


func _on_Tequesquitengo_pressed():
	$ColorRect/lblInformacion.text = "Tequesquitengo en Morelos es conocido por su lago artificial, ofreciendo oportunidades para practicar deportes acuáticos y disfrutar de un clima agradable en un entorno natural."

func _on_CentroHistorico_pressed():
	$ColorRect/lblInformacion.text  = "El Centro Histórico de Morelos, en Michoacán, es un sitio declarado Patrimonio de la Humanidad por la UNESCO, caracterizado por sus calles empedradas, plazas y arquitectura colonial."


func _on_GuajoloteEnSalsaVerde_pressed():
	$ColorRect/lblInformacion.text  = "El Guajolote en Salsa Verde es una preparación que destaca por su carne de pavo cocida en una salsa verde vibrante, ofreciendo un plato sustancioso y lleno de sabores auténticos."


func _on_QuesadillasDEHongos_pressed():
	$ColorRect/lblInformacion.text  = "Las Quesadillas de Hongos son tortillas rellenas de hongos, queso y otros ingredientes, creando un platillo vegetariano delicioso que resalta la diversidad de la cocina mexicana."


func _on_ArcosTepotzotlan_pressed():
	$ColorRect/lblInformacion.text  = "El Sitio Los Arcos en Tepotzotlán, Estado de México, es un conjunto arquitectónico que incluye un acueducto, mostrando la maestría de la ingeniería hidráulica de la época colonial."


func _on_PiramideTeotihuacan_pressed():
	$ColorRect/lblInformacion.text  = "La Pirámide de Teotihuacán es un majestuoso sitio arqueológico en el Valle de México, con las pirámides del Sol y la Luna, siendo un testimonio de la grandeza de la cultura teotihuacana."


func _on_TorresSatelite_pressed():
	$ColorRect/lblInformacion.text  = "Las Torres de Satélite en el Estado de México son esculturas monumentales que representan la colaboración entre artistas y arquitectos, añadiendo una expresión artística única al paisaje urbano."


func _on_TacosPastor_pressed():
	$ColorRect/lblInformacion.text  = "Los Tacos al Pastor son una deliciosa creación con carne de cerdo adobada, asada verticalmente y servida con piña, cilantro y cebolla, proporcionando una experiencia de sabor inigualable."


func _on_Metro_pressed():
	$ColorRect/lblInformacion.text  = "El Metro de la Ciudad de México es uno de los sistemas de transporte público más extensos del mundo, facilitando la movilidad en la metrópoli y siendo un elemento vital en la vida diaria de los habitantes."


func _on_BellasArtes_pressed():
	$ColorRect/lblInformacion.text  = "El Palacio de Bellas Artes en la Ciudad de México es un icónico centro cultural, reconocido por su arquitectura elegante y su papel en la promoción de diversas expresiones artísticas, desde la música hasta la danza."
