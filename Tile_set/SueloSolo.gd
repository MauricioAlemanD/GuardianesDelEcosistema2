extends Node2D

var nariz
var tam_mapa = Vector2(80,60)
var capa_pasto = 0.5
var carretera_de_capas = Vector2(0.3,0.05)
var capas_de_entorno = Vector3(0.4,0.3,0.04)

func _ready():
	randomize()
	nariz = OpenSimplexNoise.new()
	#nariz.speed = randi()
	nariz.octaves = 1.0
	nariz.period = 33
	
	crearMapaPasto()


func crearMapaPasto():
	for x in tam_mapa.x:
		for y in tam_mapa.y:
			var a = nariz.get_noise_2d(x,y)
			if a < capa_pasto:
				$Pasto.set_cell(x,y,0)
			
		
	#$Pasto.update_bitmask_region(Vector2(0.0,0.0),Vector2(tam_mapa.x,tam_mapa.y))
