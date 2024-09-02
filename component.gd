@icon('res://ComponentNodes/group.svg')
class_name Component

extends Node


@export var bypass:bool = true

@export var reference:ComponentReference
@export var self_reference:StringName

func _ready():
	if reference:
		_register_reference()

func _physics_process(delta):
	_component_process(delta)


func _component_process(delta): pass


func _register_reference():
	if reference:
		if self_reference:
			reference.register(self_reference, self)
	pass


func set_processing(value:bool):
	if bypass:
		process_mode = PROCESS_MODE_INHERIT if value else PROCESS_MODE_DISABLED
