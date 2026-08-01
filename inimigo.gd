extends Node2D
var caminho = preload("res://projetil.tscn")
@export var vez_i:bool
@export var HpInimigo:int
@export var stamina:int
@export var dano_i:int 

@onready var HpJogador = %Jogador.HpJogador
@onready var vez_j = %Jogador.vez_j

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
func _physics_process(_delta: float) -> void:
	if vez_i:
		vez_i = false
		atirar()
		HpJogador = HpJogador - dano_i
		vez_j = true


func atirar():
	var projetil=caminho.instantiate()
	projetil.dir = rotation
	projetil.pos = $ControleI.global_position
	projetil.rota = global_rotation
	get_parent().add_child(projetil)
	
	

