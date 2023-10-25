extends Node2D

var noise 
var map_size = Vector2(200,200)
var grass_cap = 0.5
var road_caps = Vector2(0.3,0.05)
var enviroment_caps = Vector3(0.4,0.3,0.04)


func make_grass_map():
	for x in map_size.x:
		for y in map_size.y:
			var a = noise.get_noise_2d(x,y)
			if a < grass_cap:
				$TierraBase.set_cell(x,y,0)
				
				
				
				
func make_enviroment_map():
	for x in map_size.x:
		for y in map_size.y:
			var a = noise.get_noise_2d(x,y)
			if a < enviroment_caps.x and a > enviroment_caps.y or enviroment_caps.x:
				var chanse = randi() %100
				if chanse < 7:
					var num = randi() %6
					$Ambiente.set_cell(x,y,num)
					
func crea_arboles():
	for x in map_size.x:
		for y in map_size.y:
			
			var celda = $Base.get_cell(x,y)

			var minimo = 0
			var maximo = 10
			var relleno = randf() * (maximo - minimo) + minimo
			
			if relleno <= 1:
				if celda == -1:
					$Arboles.set_cell(x,y,0)
					
					
			elif relleno > 1 and relleno >= 7:
				if celda == -1:
					$Arboles.set_cell(x,y,1)
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	noise = OpenSimplexNoise.new()
	noise.seed= randi()
	noise.octaves = 1.0
	noise.period = 0
	make_grass_map()
	make_enviroment_map()
	crea_arboles()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
