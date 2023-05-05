class Quesiton
  def initialize
    @left_no = 3
    @right_no = 2
  end

  def ask(name)
    puts "#{name}: What does #{@left_no} plus #{@right_no} equal?"
  end

  def answer(answer)
    puts @left_no + @right_no == answer
  end

end