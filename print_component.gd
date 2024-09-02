@icon('res://ComponentNodes/print.svg')

class_name PrintComponent

extends Component

@export var message = ""

func _physics_process(delta):
	super._physics_process(delta)
	print(message)
