require 'colorize'

class Slotgame
    attr_accessor :player

    def initialize(player)
        @player = player
        
        place_bet
    end

    def place_bet
        puts "please enter your bet"
        bet_amount = gets.strip.to_i
        puts "\n"

        run_game(bet_amount)
    end

    def run_game(bet_amount)
        winnings = bet_amount * 5

        @roll_one = rand(1..3)
        @roll_two = rand(1..3)
        @roll_three = rand(1..3)

        puts "|#{@roll_one.to_s.colorize(:yellow)} - #{@roll_two.to_s.colorize(:yellow)} - #{@roll_three.to_s.colorize(:yellow)}|"

        if @roll_one == @roll_two
            if @roll_two == @roll_three
                # adds bet_amount * 5 into bankroll
                player.bankroll_adjust(winnings)
                puts "YOU WON "+ winnings.to_s.colorize(:green) + "!"
                puts "Total: #{player.money}"
            else
                # takes bet_amount away from bankroll
                player.bankroll_adjust(-bet_amount)
                puts "you lost " + bet_amount.to_s.colorize(:red) + "."
                puts "Total: #{player.money}"
            end
        else
            # takes bet_amount away from bankroll
            player.bankroll_adjust(-bet_amount)
            puts "you lost " + bet_amount.to_s.colorize(:red) + "."
            puts "Total: #{player.money}"
        end
        puts "\n"
    end 
end