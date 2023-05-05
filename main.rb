require './player'
require './mathgame'
require './question'


game = Mathgame.new("Oliver", "Potato")
puts game.player1.name
puts game.player2.name

question1 = Quesiton.new
question1.ask("Oliver")
question1.answer(5)
question1.answer(6)