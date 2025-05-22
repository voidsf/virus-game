extends Button

@onready var upgrade_manager = $"../../../Upgrade Manager"

@export var upgrade_id = -1
var price

func _ready() -> void:
	if upgrade_id == -1:
		visible = false

func update() -> void:
	visible = true
	
	upgrade_id = upgrade_manager.active_upgrade
	price = upgrade_manager.upgrades[upgrade_id]["price"]
	
	if upgrade_id in Player.upgrades:
		text = "Already purchased"
		disabled = true
	elif Player.balance < price:
		disabled = true
		text = "Too expensive $" + str(price)
	else: 
		disabled = false
		text = "Buy Upgrade: $" + str(price)


func _on_pressed() -> void:
	var balance = Player.balance
	
	if balance >= price:
		Player.balance -= price
		Player.upgrades.append(upgrade_id)
	
	update()
