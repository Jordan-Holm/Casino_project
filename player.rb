class Player
  attr_accessor :name , :money

  def initialize(name, money)
    @name = name
    @money = money
  end

  def bankroll_adjust(num)
    @money += num
  end
end
