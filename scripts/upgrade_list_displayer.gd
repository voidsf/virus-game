extends GridContainer

const upgrade_button = preload("res://scenes/prefab_upgrade_button.tscn")

func _ready(): 
	var upgrade_manager = $"../../../Upgrade Manager"
	
	for upgrade_id in range(len(upgrade_manager.upgrades)):
		var new_button = upgrade_button.instantiate()
		new_button.upgrade_id = upgrade_id
		new_button.upgrade_manager = upgrade_manager

		self.add_child(new_button)
