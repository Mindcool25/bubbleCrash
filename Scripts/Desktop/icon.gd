extends Sprite2D

@export var application: StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.application.visible = false
	pass # Replace with function body.
func toggle_application():
	self.application.visible = !self.application.visible

func _input(event: InputEvent):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		print(self.visible)
		if self.get_rect().has_point(to_local(event.position)) and self.visible:
			self.application.visible = !self.application.visible
			print(self.visible)
			print("FUCK")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
