extends Control

@export var ClickButton: Button
@export var Score: Label

var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Score.text = str(score)
	pass


func _on_button_pressed() -> void:
	score += 1
	pass # Replace with function body.
