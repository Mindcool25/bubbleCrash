extends Node2D

@export var TaskBarButton: Sprite2D
@export var Menu: Sprite2D
@export var OpenApplication: Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Menu.visible = false

	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if TaskBarButton.get_rect().has_point(to_local(event.position)):
			Menu.visible = !Menu.visible


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
