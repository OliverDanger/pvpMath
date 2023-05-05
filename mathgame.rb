class Mathgame
  attr_accessor :player1, :player2, :next_player, :current_question
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @next_player = [@player1, @player2].sample()
    @current_question
  end
  
# asks @next_player a question and verifies the answer
  def ask_player()
    @current_question = Quesiton.new
    @current_question.ask(@next_player.name)
    puts "______???______???______???______"
    choice = $stdin.gets.chomp.to_i
    correct = @current_question.answer(choice)
    if correct 
      puts "#{@next_player.name} got it!"
    else
      puts "Sorry #{@next_player.name}, you now have #{@next_player.lose_life} lives remaining."
    end
  end

end