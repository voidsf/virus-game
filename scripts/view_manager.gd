extends Node

var office_view = preload("res://scenes/prefab office view.tscn")

func _ready() -> void:
	add_child(office_view.instantiate())
	
