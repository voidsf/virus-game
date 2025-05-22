extends Label

func _ready() -> void:
	update()

func update():
	text = "$" + str(Player.balance)
