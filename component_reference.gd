class_name ComponentReference

extends Resource

var temp

var tree_root:Component

func register(string_name:StringName = "", object:Object = null):
	if not string_name:
		return
	print(string_name, " = ", object)
	set(string_name, object)
