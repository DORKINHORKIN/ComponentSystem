@icon('res://ComponentNodes/choose.svg')
class_name ChoiceComponent

extends Component

var current:ChoiceFilterComponent
var previous:ChoiceFilterComponent

func _ready():
	if get_child_count() > 0:
		choose(get_child(0))
	pass

func _physics_process(delta):
	super._physics_process(delta)
	for component in get_children() as Array[ChoiceFilterComponent]:
		if component == current:
			component.set_processing(true)
			continue
		component.set_processing(false)

func choose(value:ChoiceFilterComponent):
	if value != current:
		previous = current
		current = value
