extends CharacterBody2D

@export var speed = 400

func _ready() -> void:
	pass

func get_input() -> void:
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * speed

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
