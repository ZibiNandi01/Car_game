extends Area3D

@export var garage_ui: Control
var first_run = true



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if first_run:		#ready
		$"Garage UI".visible = false
		first_run = false



func _on_body_entered(body: Node3D) -> void:
	$"Garage UI".visible = true
	



func _on_body_exited(body: Node3D) -> void:
	$"Garage UI".visible = false
