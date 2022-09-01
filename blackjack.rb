class Blackjack
  attr_accessor :player

  def initialize(player)
    @player = player
    
    place_bet
  end

  def black_jack
    puts "your card ammount is #{card_ammount}"
    puts "press one to hit again"
    puts "press two to hold"
    player_choice = gets.strip.to_i
    
    if player_choice == 1
      card_ammount += @draw_three

    elsif card_ammout < 21 && card_ammount > dealer_hand 
      puts "you won!!"
    elsif
      puts "you lost!!"

    elsif player_choice == 2
      hold
    elsif card_ammout < 21 && card_ammount > dealer_hand 
      puts "you won!!"
    else
     puts "you lost!!"
        
    end
  end

  # if player_choice == 2
  #   hold
  # elsif card_ammout < 21 && card_ammount > dealer_hand 
  #   puts "you won!!"
  # else
  #   puts "you lost!!"
  # end


  def place_bet
    puts "please enter your bet"
    bet_amount = gets.strip.to_i

    run_game(bet_amount)
  end
  
  def add_cards(num, num2)
    total = num + num2
  end

  def run_game(bet_amount)
    winnings = bet_amount * 3

    @dealer_hand = rand(15..21)
    @draw_one = rand(1..10)
    @draw_two = rand(1..10)
    @draw_three = rand(1..10)
    @draw_four = rand(1..10)
    @draw_five = rand(1..10)
    card_ammount = add_cards(@draw_one, @draw_two)

    puts "#{@draw_one} - #{@draw_two} - #{@draw_three} - #{@draw_four} - #{@draw_five}"

    if @draw_one == @draw_two
      if @draw_two == @draw_five
        player.bankroll_adjust(winnings)
        puts "YOU WIN #{winnings}!"
        puts "Total: #{player.money}"
      elsif
        player.bankroll_adjust(-bet_amount)
        puts "you lost #{bet_amount}."
        puts "Total: #{player.money}"
      end
    else
      player.bankroll_adjust(-bet_amount)
      puts "you lost #{bet_amount}."
      puts "Total: #{player.money}"
    end

    place_bet



  end

end

menu = blackjack.new()





      
 