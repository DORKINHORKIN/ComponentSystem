@icon('res://ComponentNodes/boolean_choice.svg')
class_name BooleanChoiceComponent

extends ChoiceComponent

@export_node_path('ChoiceFilterComponent') var pass_choice = NodePath("Pass")
@export_node_path('ChoiceFilterComponent') var fail_choice = NodePath("Fail")

func _physics_process(delta):
	var choice_path:NodePath = \
		pass_choice if _choice_condition() == true else fail_choice
	var choice_node = get_node_or_null(choice_path)
	if choice_node:
		choose(choice_node)
	super._physics_process(delta)

func _choice_condition(value:= true):
	return value
