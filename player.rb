class Player
  attr_accessor :name , :money

  def initialize
    puts "What is your name?"
    @name = name
    @money = money
  end

  def bankroll_adjust(num)
    @money += num
  end
end
