class Quesiton
  def initialize
    @left_no = rand(1..20)
    @right_no = rand(1..20)
  end

  def ask(name)
    puts "#{name}: What does #{@left_no} plus #{@right_no} equal?"
  end

  def answer(answer)
    @left_no + @right_no == answer
  end

end