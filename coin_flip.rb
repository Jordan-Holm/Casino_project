class Coinflip
  attr_accessor :player

  def initialize(player)
    @player = player

    coin_flip
  end

  def coin_flip
    puts "Welcome!!! Flip away!"
    puts '1) Flip'
    puts '2) main menu'
    answer = gets.strip

    if answer == 1
      place_bet
    elsif answer == 2
      #find out how to return to main menu
    else
      puts "hmm.. I didn't quite get that. Could you pick again from options 1 or 2?"
      coin_flip
    end
    
  end

  def place_bet
    puts "Place your bet"
    bet_amount = gets.strip.to_i
  
    run_game(bet_amount)
  end

  def run_game(bet_amount)
    winnings = bet_amount * 6

        # true for heads
 def coinFlip
  number.times do |flip|
    x = rand(1..2)
    x.even? puts "heads" or puts "tails"
  end
end

coinFlip(1)

    if @heads == true
      player.bankroll_adjust(winnings)
      puts "IT'S HEADS!! YOU WON #{winnnings}!!"
      puts "Total: #{player.money}"
    else
      # casino takes all your money now
      player.bankroll_adjust(-bet_amount)
      puts "it's tails..you lost #{bet_amount}." # add crying ascII art
      puts "Total: #{player.money}"
    end

    coin_flip
  end
end

    # add ascII art


# maybe ascii art for slots icons?

