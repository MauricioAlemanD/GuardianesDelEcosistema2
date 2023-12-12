extends Node2D

var bg : Node2D
var scrollbar : VScrollBar  # Asegúrate de que es un VScrollBar si es vertical

func _ready():
	# Asigna las referencias a los nodos
	bg = $bg
	scrollbar = $VScrollBar  # Ajusta según el nombre de tu barra de desplazamiento
	# Conecta la señal value_changed de la barra de desplazamiento a la función _on_scrollbar_value_changed
	scrollbar.connect("value_changed", self, "_on_scrollbar_value_changed")

func _on_scrollbar_value_changed(value):
	pass


func _on_VScrollBar_changed(value):
	# Obtén el valor de la barra de desplazamiento (0.0 a 1.0)
	# Puedes multiplicar este valor por la distancia total que deseas que se desplace el fondo
	# Por ejemplo, si quieres que el fondo se mueva verticalmente en un rango de 0 a 200 píxeles:
	var scroll_range = 200
	var new_y = lerp(0, scroll_range, value)  # lerp interpola linealmente entre dos valores
	
	# Mueve el nodo bg a la nueva posición
	bg.rect_position.y = new_y
