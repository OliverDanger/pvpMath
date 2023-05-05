class GameManager 
  attr_accessor :name1, :name2, :current_game

  def initialize()
    @name1
    @name2
    @current_game
  end

  def start_mathgame()
    puts "What is player one's name?"
    @name1 = $stdin.gets.chomp
    puts "Thank you #{name1}"
    puts "What is player two's name?"
    @name2 = $stdin.gets.chomp
    puts "Thank you #{name1}"

    @current_game = Mathgame.new(@name1, @name2)
    @current_game.ask_player
  end

end