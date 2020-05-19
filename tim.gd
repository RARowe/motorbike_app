extends Node2D

onready var music = $AudioStreamPlayer2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var opaque = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play()
	$AnimatedSprite2.play()
	$AnimatedSprite3.play()
	music.connect("finished", self, "_onFinished")
	pass # Replace with function body.

func _onFinished():
	get_tree().quit()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if opaque > 0:
		$Sprite.modulate = Color(1, 1, 1, opaque)
		opaque -= 0.0025
