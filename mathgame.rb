class Mathgame
  attr_accessor :player1, :player2, :next_player, :current_question
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @next_player = [@player1, @player2].sample()
    @current_question
  end
  
  # asks @next_player a NEW question instance and returns their answer
  def ask_player()
    @current_question = Quesiton.new
    puts "---------- #{next_player.name.upcase}'S TURN ----------"
    @current_question.ask(@next_player.name)
    choice = $stdin.gets.chomp.to_i
    check_answer(choice)
  end

  # verifies the answer given against @current_question
  def check_answer(choice)
    correct = @current_question.answer(choice)
    if correct 
      puts "#{@next_player.name} got it!"
    else
      puts "Sorry #{@next_player.name}, you now have #{@next_player.lose_life} lives remaining."
    end
    if @next_player.lives == 0
      return end_game
    end
    new_turn
  end

  # swaps the player at @next_player
  def togglePlayer
    @next_player = (@next_player.name == @player1.name ? @player2 : @player1 )
  end

  # toggles next_player and asks a question
  def new_turn
    puts "--------------------"
    puts "Current score:\n#{player1.name}: #{player1.lives} lives \n#{player2.name}: #{player2.lives} lives"
    togglePlayer
    ask_player
  end

  # ends game and prints final score message
  def end_game
    puts "---------- GAME OVER ----------"
    winner = (player1.lives > player2.lives ? player1.name : player2.name)
    puts "#{winner} Wins! \nFinal score:\n#{player1.name}: #{player1.lives} lives \n#{player2.name}: #{player2.lives} lives"
  end

end