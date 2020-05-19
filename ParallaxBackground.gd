extends ParallaxBackground


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sprites = []
# Called when the node enters the scene tree for the first time.
func _ready():
	var formatString = "ParallaxLayer%d/Sprite"
	for n in range(1, 5):
		sprites.push_back(get_node(formatString % n))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ParallaxLayer2.motion_offset.x -= 0.125;
	$ParallaxLayer3.motion_offset.x -= 0.5;
	$ParallaxLayer4.motion_offset.x -= 1;
	$ParallaxLayer5.motion_offset.x -= 2;
	
	#for s in sprites:
	#	s.getPosition()
#	var scroll = Vector2(0,3) #Some default scrolling so there's always movement.
#	$ParallaxBackground.scroll_offset += scroll
