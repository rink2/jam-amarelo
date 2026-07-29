extends Node2D

var HPatual = 50
var maxHP_jogador = 50
var dano_j 

var HPinimigo = 50
var maxHP_inimigo = 50 
var dano_i 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setHealth($Jogador/HPBar,HPatual, maxHP_jogador)
	setHealth($Jogador/HPBar,HPinimigo, maxHP_inimigo)
	pass # Replace with function body.

func setHealth(HPBar, HP, maxHP):
	HPBar.max_value = maxHP
	HPBar.value = HP
