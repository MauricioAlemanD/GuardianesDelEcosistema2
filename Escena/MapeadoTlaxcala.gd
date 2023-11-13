extends Node2D

var noise
var map_size = Vector2(200, 200)

func _ready():
	randomize()
	noise = OpenSimplexNoise.new()
	noise.seed = randi()
	noise.octaves = 1.0
	noise.period = 0
	crea_arboles()

func crea_arboles():
	for x in range(0, map_size.x):
		for y in range(0, map_size.y):
			var celda = $Base.get_cell(x, y)
			var relleno = noise.get_noise_2d(x, y)

			# Ajusta los valores de umbral según tus necesidades
			if relleno <= 0.5:
				if celda == -1:
					$Arboles.set_cell(x, y, 3)
			elif relleno > 0.5 and relleno <= 0.7:
				if celda == -1:
					$Arboles.set_cell(x, y, 4)
