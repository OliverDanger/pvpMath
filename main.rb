require './player'
require './mathgame'
require './question'


game = Mathgame.new("Oliver", "Potato")
puts game.next_player.name
question1 = Quesiton.new
game.ask_player
question1.answer(5)
question1.answer(6)