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
	
	while HPatual>0 and HPinimigo>0:
		#ataqueinimigo
		HPatual = HPatual - dano_i 
		setHealth($Jogador/HPBar,HPatual, maxHP_jogador)
		if HPatual>0 and HPinimigo>0:
			#escolha jogador
				#ataque fraco
				#ataque forte
			pass
			setHealth($Jogador/HPBar,HPinimigo, maxHP_inimigo)
		else: break
	


func setHealth(HPBar, HP, maxHP):
	HPBar.max_value = maxHP
	HPBar.value = HP

