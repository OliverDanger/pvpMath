class Mathgame
  attr_accessor :player1, :player2, :next_player, :current_question
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @next_player = [@player1, @player2].sample()
    @current_question = Quesiton.new
  end
  
  def ask_player()
    @current_question.ask(@next_player.name)
  end

end