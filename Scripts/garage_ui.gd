extends VBoxContainer

@export var button_exit: Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button_exit.text = "Main menu"
	button_exit.pressed.connect(_button_pressed_exit)
	
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _button_pressed_exit():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
