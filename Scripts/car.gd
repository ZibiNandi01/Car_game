extends VehicleBody3D

@export var MAX_STEER = 0.6
@export var ENGINE_POWER = 300

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
			
	engine_force = Input.get_axis("down", "up") * ENGINE_POWER
