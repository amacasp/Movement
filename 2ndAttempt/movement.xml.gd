extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var upD = Vector2 (0,-1)
var downD = Vector2 (0,1)
var leftD = Vector2 (-1,0)
var rightD = Vector2 (1,0)
const speed = 500
var pos = self.get_pos()

func _ready():
	set_process(true)
	
	
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		pos += speed * upD * delta
		self.set_pos(pos)
		
	if Input.is_action_pressed("ui_down"):
		pos += speed * downD * delta
		self.set_pos(pos)
		
	if Input.is_action_pressed("ui_left"):
		pos += speed * leftD * delta
		self.set_pos(pos)
		
	if Input.is_action_pressed("ui_right"):
		pos += speed * rightD * delta
		self.set_pos(pos)