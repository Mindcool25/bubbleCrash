extends StaticBody2D

@export var tabBox: CollisionShape2D
var dragging: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	pass

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and dragging:
		self.position += event.get_relative()
		pass
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		dragging = true
	if Input.is_action_just_released("click"):
		dragging = false
	
	pass # Replace with function body.
