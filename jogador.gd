extends Node2D
var caminho = preload("res://projetil.tscn")
@export var vez_j:bool
@export var HpJogador:int
@export var stamina:int
@export var dano_j:int
var vez_i = $"../Inimigo".vez_i
var HpInimigo = $"../Inimigo".HpInimigo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
func _physics_process(_delta: float) -> void:
	if vez_j:
		if Input.is_action_just_pressed("ataque"):
			vez_j = false
			atirar()
			stamina = stamina + 15
			HpInimigo = HpInimigo - dano_j
			vez_i = true 
		if stamina>=45 and Input.is_action_just_pressed("especial"):
			vez_j = false
			sintonizar()
			vez_i = true


func atirar():
	var projetil=caminho.instantiate()
	projetil.dir = rotation
	projetil.pos = $ControleJ.global_position
	projetil.rota = global_rotation
	get_parent().add_child(projetil)
	
	
func sintonizar():
	pass
