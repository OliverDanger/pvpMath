class Person
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end

end

oliver = Person.new("OddOctopod")
puts oliver.name
puts oliver.lives
oliver.lose_life
puts oliver.lives