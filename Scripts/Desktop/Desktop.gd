extends Node2D


@export var Background: Sprite2D
@export var Bar: Sprite2D
@export var BarButton: Sprite2D
@export var BarMenu: Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_box_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		BarMenu.visible = !BarMenu.visible
	pass # Replace with function body.
