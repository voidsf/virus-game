extends Node

@onready var upgrade_description = $"../User Interface/Right Column/Upgrade Description"
@onready var buy_button = $"../User Interface/Right Column/Buy Button"
@onready var balance_label = $"../User Interface/Left Column/Balance Label"

@export var upgrades = [{
	"name": "USB Stick",
	"description": "Allows you install malware on devices with a physical connection",
	"price": 10
},
{
	"name": "Phishing",
	"description": "Allows you to send emails that look like they could be genuine, stealing users' info",
	"price": 20
}]

@export var active_upgrade = 0

func set_active_upgrade(new_upgrade):
	active_upgrade = new_upgrade
	
	upgrade_description.update()
	buy_button.update()
	balance_label.update()
