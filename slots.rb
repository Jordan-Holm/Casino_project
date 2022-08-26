class Slotgame
    # attr_accessor :person, :menu

    # def initialize(person, menu)
    #     @person = person
    #     @menu = menu
    #     roll_or_leave
    # end

    def initialize
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
            #return to menu
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
        @roll_one = rand(1..3)
        @roll_two = rand(1..3)
        @roll_three = rand(1..3)

        puts "#{@roll_one} - #{@roll_two} - #{@roll_three}"

        if @roll_one == @roll_two
            if @roll_two == @roll_three
                puts "YOU WIN!"
                # adds bet_amount * 5 into bankroll
            else
                puts "YOU LOSE"
                # takes bet_amount away from bankroll
            end
        else
            puts "YOU LOSE"
            # takes bet_amount away from bankroll
        end

        roll_or_leave
    end

    
end

slot_game = Slotgame.new()