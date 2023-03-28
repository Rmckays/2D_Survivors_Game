extends CharacterBody2D

@onready var velocity_component = $VelocityComponent
@onready var visuals = $Visuals

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity_component.accelerate_to_player()
	velocity_component.move(self)
	
	var move_sign = sign(velocity.x)
	if move_sign != 0:
		visuals.scale = Vector2(move_sign, 1)
