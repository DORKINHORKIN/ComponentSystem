@icon('res://ComponentNodes/choose_request.svg')

class_name ChoiceRequestComponent

extends Component

@export var choice_component:ChoiceComponent

@export var choice_request:ChoiceFilterComponent

func _physics_process(delta):
	super._physics_process(delta)
	if choice_component:
		choice_component.choose(choice_request)
