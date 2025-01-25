extends Node2D

@export var Application: PackedScene
@export var WindowHolder: Node2D

var pressed: bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("click") and pressed:
		pressed = false
		var instance = Application.instantiate()
		WindowHolder.add_child(instance)
	pass


func _on_button_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click") and self.visible == true:
		# Animation here
		pressed = true
		get_parent().visible = false
	pass # Replace with function body.
