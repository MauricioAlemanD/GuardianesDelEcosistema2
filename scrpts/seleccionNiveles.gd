extends Control

func _ready():
	print(UsuarioGlobal.nombreUsuarioGlobal)
	$lblNombreUsuario.text = UsuarioGlobal.nombreUsuarioGlobal


#var levels = {"1":true,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"8":false}
#var userName = ""
#var entrar = false
#
#
#func _ready():
#	startLevels()
#	if  true:
#		$SvgMexico/Guan.visible = levels["1"]
#		$SvgMexico/Quer.visible = levels["2"]
#		$SvgMexico/Hid.visible = levels["3"]
#		$SvgMexico/Pueb.visible = levels["4"]
#		$SvgMexico/Tlax.visible = levels["5"]
#		$SvgMexico/Mor.visible = levels["6"]
#		$SvgMexico/Mex.visible = levels["7"]
#		$SvgMexico/CDM.visible = levels["8"]
#		entrar = true
#
#
#
#
#
#func startLevels():
#
#	var file = File.new()
#
#	if (file.file_exists("user://levelsData.dat")):
#
#		file.open("user://levelsData.dat", File.READ)
#		levels = file.get_var()
#		file.close()
#
#	else:
#		file.open("user://levelsData.dat",File.WRITE)
#		file.store_var(levels)
#		file.close()




#func _on_Button_pressed():
	#$SvgMexico/Hud.visible = false



func _on_Button_pressed():
	get_tree().change_scene("res://Escena/MenuInicial.tscn")
