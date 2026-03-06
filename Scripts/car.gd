extends VehicleBody3D


@export var MAX_STEER = 0.6
@export var ENGINE_POWER = 5000
@export var BRAKE_POWER = 25

func _physics_process(delta):
	if steering>0:
		if Input.get_axis("right", "left") > steering:
			steering = move_toward(steering, Input.get_axis("right","left") * MAX_STEER, delta *2)
		else:
			steering = move_toward(steering, Input.get_axis("right","left") * MAX_STEER, delta *4)
	elif steering<0:
		if Input.get_axis("right", "left") < steering:
			steering = move_toward(steering, Input.get_axis("right","left") * MAX_STEER, delta *2)
		else:
			steering = move_toward(steering, Input.get_axis("right","left") * MAX_STEER, delta *4)
	else:
		steering = move_toward(steering, Input.get_axis("right","left") * MAX_STEER, delta *2)
			
	
	engine_force = int(Input.is_action_pressed("up")) * ENGINE_POWER
	brake = int(Input.is_action_pressed("down")) * BRAKE_POWER
