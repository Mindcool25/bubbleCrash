extends Node2D


@export var Background: Sprite2D
@export var Bar: Sprite2D
@export var BarButton: AnimatedSprite2D
@export var BarMenu: Sprite2D
@export var Settings: Button
@export var Score: Label

var currScore = 0

# Setting up initial things, don't worry about it
# just don't touch it
func _ready() -> void:
	get_viewport().physics_object_picking_first_only = true
	get_viewport().physics_object_picking_sort = true
	BarMenu.visible = false
	pass # Replace with function body.

# If the button is currently pressed (the animation), release it and then toggle
# the bar menu
func _input(event: InputEvent) -> void:
	if Input.is_action_just_released("click") and BarButton.frame == 1:
		BarButton.frame = 0
		BarMenu.visible = !BarMenu.visible

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Score.text = str(currScore)
	pass

# Start the animation for the Mindows button press
func _on_button_box_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		BarButton.frame = 1

# Don't worry about this, just some image fuckary
func _on_file_dialog_file_selected(path: String) -> void:
	var image = Image.load_from_file(path)
	var texture = ImageTexture.create_from_image(image)
	texture.set_size_override(Vector2(800, 600))
	$Background.texture = texture
	pass # Replace with function body.

# Open up settings menu
func _on_settings_pressed() -> void:
	$FileDialog.visible = true
	BarMenu.visible = false
	pass # Replace with function body.
