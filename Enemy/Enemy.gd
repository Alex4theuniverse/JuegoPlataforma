extends KinematicBody2D

var gravity = 10
var speed = 30
var  velocity = Vector2(0, 0)


func _ready():
	$AnimatedSprite.play("walk")
	
func _process(delta):
	move_character()
	
func move_character():
	velocity.y += gravity
	velocity.x = -speed
	
	
	velocity = move_and_slide(velocity,Vector2.UP)
