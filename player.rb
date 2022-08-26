class player
  attr_accessor : name, :money
  def initialize
    puts "What is your name?"
    @name = gets.strip
    @money = 500.00
  end


end