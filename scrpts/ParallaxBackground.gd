extends ParallaxBackground #Hereda del nodo ParallaxBackground

var DIR = Vector2(1,1) #Se establece la direccion a la que el fondo se movera
var speed = 500 #Se establece la velocidad a la que se mueve el fondo

func _physics_process(delta): #Se crea la funcion para añadirle una fisica al proceso del background
	scroll_base_offset += DIR * speed * delta #Con esta funcion se indica que el objeto se mueva hacia una direccion, a una velocidad en base a delta que es 

