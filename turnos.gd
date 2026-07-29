extends Node2D

var HPatual = 50
var maxHP_jogador = 50
var dano 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setHealth($Jogador/HPBar,HPatual, maxHP_jogador)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func setHealth(HPBar, HP, maxHP):
	HPBar.max_value = maxHP
	HPBar.value = HP
