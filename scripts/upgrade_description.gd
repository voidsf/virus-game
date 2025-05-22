extends RichTextLabel

@onready var upgrade_manager = $"../../../Upgrade Manager"

func update():
	var active_upgrade = upgrade_manager.active_upgrade
	
	text = upgrade_manager.upgrades[active_upgrade]["description"]
