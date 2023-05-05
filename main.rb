require './player'
require './mathgame'


oliver = Player.new("OddOctopod")
puts oliver.name
puts oliver.lives
oliver.lose_life
puts oliver.lives