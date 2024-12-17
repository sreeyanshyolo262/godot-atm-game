extends Node
class_name GUI

@onready var price_indication:Label = $PriceIndication

@onready var win_screen:Control=$WinScreen
@onready var lose_screen:Control=$LoseScreen
@onready var final_price_indication:Label=$WinScreen/FinalPriceIndication

var game_manager:GameManager
# Called when the node enters the scene tree for the first time.
func _ready():
	game_manager = get_tree().get_first_node_in_group("GameManager")
	win_screen.visible=false
	lose_screen.visible=false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	price_indication.text="Current Solana Price: %s$" % str(game_manager.get_curr_price())
	pass
	
	
func handle_game_win(curr_price:float)->void:
	win_screen.visible=true
	final_price_indication.text="Final Price %s$" % str(curr_price)
	
func handle_game_lose() -> void:
	lose_screen.visible=true


func _on_replay_button_pressed() -> void:
	get_tree().reload_current_scene()
