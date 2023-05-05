class GameManager 
  attr_accessor :name1, :name2, :current_game

  def initialize()
    @name1
    @name2
    @current_game
  end

  # asks players for names
  def player_names()
    puts "What is player one's name?"
    @name1 = $stdin.gets.chomp
    puts "Thank you #{name1}"
    puts "What is player two's name?"
    @name2 = $stdin.gets.chomp
    puts "Thank you #{name2}"
  end

  #gets player names and passes then to new Mathgame instance
  def start_mathgame()
    unless @name1 || @name2
      player_names
    end
    @current_game = Mathgame.new(@name1, @name2)
    @current_game.ask_player
  end

  # asks to play again
  def play_again
    puts "Play mathGame? (Y/n)"
    again = $stdin.gets.chomp
    again == 'Y' || again == 'y' ? start_mathgame : (puts "Goodbye!")
  end

end