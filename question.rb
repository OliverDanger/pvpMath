class Quesiton
  def initialize
    @leftNo = 3
    @rightNo = 2
  end

  def ask(name)
    puts "#{name}: What does #{@leftNo} plus #{@rightNo} equal?"
  end

  def answer(answer)
    puts @leftNo + @rightNo == answer
  end

end