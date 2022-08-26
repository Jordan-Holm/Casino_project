class Slotgame
    attr_accessor :person, :menu

    def initialize(person, menu)
        @person = person
        @menu = menu
        roll_or_leave
    end

    def roll_or_leave
        puts "would you like to.."
        puts '1) spin wheel'
        puts '2) return to menu'
        answer = gets.strip.to_i

        if answer == 1
            place_bet
        elsif answer == 2
            @menu = Menu.new()
        else
            puts "invalid entry, please choose 1 or two"
            roll_or_leave
        end

    end

    def place_bet
        puts "please enter your bet"
        bet_amount = gets.strip.to_i

        run_game(bet_amount)
    end

    def run_game(bet_amount)
        winnings = bet_amount * 5

        @roll_one = rand(1..3)
        @roll_two = rand(1..3)
        @roll_three = rand(1..3)

        puts "#{@roll_one} - #{@roll_two} - #{@roll_three}"

        if @roll_one == @roll_two
            if @roll_two == @roll_three
                # adds bet_amount * 5 into bankroll
                person.bankroll_adjust(winnings)
                puts "YOU WIN #{winnings}!"
                puts "Total: #{person.age}"
            else
                # takes bet_amount away from bankroll
                person.bankroll_adjust(-bet_amount)
                puts "you lost #{bet_amount}."
                puts "Total: #{person.age}"
            end
        else
            # takes bet_amount away from bankroll
            puts "you lost #{bet_amount}."
            puts "Total: #{person.age}"
        end

        roll_or_leave
    end

    
end

slot_game = Slotgame.new()