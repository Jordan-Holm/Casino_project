class Coingame
  attr_accessor :player

  def initialize(player)
    @player = player
    
    place_bet
  end

  def place_bet
    puts "Place your bet"
    bet_amount = gets.strip.to_i
  
    run_game(bet_amount)
  end

  def run_game(bet_amount)
    winnings = bet_amount * 6

  puts "Choose: 1) Heads  2) Tails"
  user_input = gets.to_i
  
  #issue area!! below
  if rand.round == 0
    coin = "Heads!"
  else
    coin = "tails"
  end

  if coin.to_i == user_input.to_i
    player.bankroll_adjust(winnings)
    puts "And the coin lands on " + coin.upcase + "! YOU WIN!!!"
    puts "Total: #{player.money}"
  else
    player.bankroll_adjust(-bet_amount)
    puts "And the coin lands on " + coin + "...ouch, I'm not sure if you'll ever financially recover from this."
    puts "      ______________________________
   / \                                   \.
   |   |                            |.
    \_ |                            |.
       |                            |.
       |                            |.
       |                            |.
       |      you lost #{bet_amount}!          |.
       |                            |.
       |                            |.
       |                            |.
       |                            |.
       |                            |.
       |                            |.
       |                            |.
       |   _________________________|___
       |  /                            /.
       \_/____________________________/."
    puts "Total: #{player.money}"
  end

# This method will iterate over each line individually from the .txt file and print it to the console
  def render_ascii_art
  File.readlines("art.txt") do |line|
    puts line
      end
    end

    # add ascII art
# maybe ascii art for slots icons?
  end
end
