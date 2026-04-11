extends Node3D

@onready var pause_menu = $PauseMenu
@onready var resume = $Control/Panel/VBoxContainer/Resume
@onready var quit = $Control/Panel/VBoxContainer/Quit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
	pause_menu.visible = get_tree().paused
	


func _on_resume_pressed() -> void:
	get_tree().paused = false # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn") # Replace with function body.
