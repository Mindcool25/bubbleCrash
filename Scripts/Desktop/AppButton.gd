extends Node2D

# Application to open
@export var Application: PackedScene

# Thing that holds the windows created by the button
@export var WindowHolder: Node2D

var pressed: bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	# If the mouse is released and it was pressed, make it not that and also
	# create an instance of the application defined in the export var
	# then add that instance as a child
	if Input.is_action_just_released("click") and pressed:
		pressed = false
		var instance = Application.instantiate()
		WindowHolder.add_child(instance)
	pass

# Check if the button is pressed, make it pressed, then make the menu dissapear
func _on_button_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click") and self.visible == true:
		# Animation here
		pressed = true
		get_parent().visible = false
	pass # Replace with function body.
