extends StaticBody2D

var movespeed = 8
const fimpendulo1 = 288
const fimpendulo2 = 864

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.x = position.x + movespeed
	if position.x == fimpendulo1 or position.x == fimpendulo2:
		movespeed = movespeed*-1
