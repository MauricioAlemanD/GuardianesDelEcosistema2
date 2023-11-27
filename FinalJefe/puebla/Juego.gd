extends Node2D

var objetos_a_mover : Dictionary = {}
var mouse_presionado : bool = false

func _ready():
	var juego_scene = load("res://FinalJefe/puebla/Juego.tscn")
	var juego_instance = juego_scene.instance()
	add_child(juego_instance)

	for i in range(4):  # Itera sobre las filas
		for j in range(4):  # Itera sobre las columnas
			var objeto_name = "Sprite" + str(i) + "_" + str(j)
			var objeto = juego_instance.get_node("root/MainNode/" + objeto_name)
			if objeto != null:
				objetos_a_mover[objeto_name] = {"objeto": objeto, "arrastrando": false}

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed:
				mouse_presionado = true
				process_input(event.position)
			else:
				mouse_presionado = false
				for objeto_info in objetos_a_mover.values():
					objeto_info["arrastrando"] = false

func _process(delta):
	if mouse_presionado:
		process_input(get_global_mouse_position())

func process_input(mouse_position):
	for objeto_info in objetos_a_mover.values():
		var objeto = objeto_info["objeto"]
		if mouse_presionado and objeto.is_in_group("arrastrable") and objeto.rect_global_contains(mouse_position):
			objeto_info["arrastrando"] = true
		if objeto_info["arrastrando"]:
			objeto.global_position = mouse_position
