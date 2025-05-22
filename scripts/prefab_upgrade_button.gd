extends Button

@export var upgrade_manager: Node = null
@export var upgrade_id = 0

func _ready() -> void:
	text = upgrade_manager.upgrades[upgrade_id]["name"]

func _on_button_down() -> void:
	upgrade_manager.set_active_upgrade(upgrade_id)
