require './player'
require './mathgame'
require './question'
require './gameManager'


# game = Mathgame.new("Oliver", "Potato")
# puts game.next_player.name
# game.ask_player

session = GameManager.new
session.start_mathgame