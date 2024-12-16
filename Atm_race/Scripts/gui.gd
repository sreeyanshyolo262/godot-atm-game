extends Node
class_name GUI

@onready var price_indication:Label = $PriceIndication

var game_manager:GameManager
# Called when the node enters the scene tree for the first time.
func _ready():
	game_manager = get_tree().get_first_node_in_group("GameManager")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	price_indication.text="Current Solana Price: %s$" % str(game_manager.get_curr_price())
	pass
