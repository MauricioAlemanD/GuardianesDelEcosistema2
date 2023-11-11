extends Node2D

var noise 
var map_size = Vector2(200,200)
var grass_cap = 0.5
var road_caps = Vector2(0.3,0.05)
var enviroment_caps = Vector3(0.4,0.3,0.04)

func _ready():
	randomize()
	noise = OpenSimplexNoise.new()
	noise.seed= randi()
	noise.octaves = 1.0
	noise.period = 0
	make_grass_map()
	make_enviroment_map()
	crea_arboles()
	

func make_grass_map():
	for x in map_size.x:
		for y in map_size.y:
			var a = noise.get_noise_2d(x,y)
			if a < grass_cap:
				$TierraBase.set_cell(x,y,1)
			
	$TierraBase.update_bitmask_region(Vector2(0.0,0.0),Vector2(map_size.x,map_size.y))

func make_enviroment_map():
	for x in map_size.x:
		for y in map_size.y:
			var a = noise.get_noise_2d(x,y)
			if a < enviroment_caps.x and a > enviroment_caps.y or enviroment_caps.x:
				var chanse = randi() %13
				if chanse > 7 and chanse < 13:
					#var num = randi() %13
					$Ambiente.set_cell(x,y,chanse)
	

func crea_arboles():
	for x in map_size.x:
		for y in map_size.y:
			
			var celda = $Base.get_cell(x,y)

			var minimo = 0
			var maximo = 10
			var relleno = randf() * (maximo - minimo) + minimo
			
			if relleno <= 1:
				if celda == -1:
					$Arboles.set_cell(x,y,3)
					
					
			elif relleno > 1 and relleno >= 7:
				if celda == -1:
					$Arboles.set_cell(x,y,4)
				
			
			
