require_relative 'player'
require_relative 'slots'
require_relative 'coin_flip'

class Mainmenu
    attr_accessor :player

    def initialize
        @player = create_player
    end

    def create_player
        puts "Enter your name: "
        name = gets.strip
        puts "Enter how much money you brought: "
        money = gets.strip.to_i

        @player = Player.new(name, money)
        menu
    end

    def menu
        puts "hello #{player.name}"
        puts "         ___________
        '._==_==_=_.'
        .-\:      /-.
       | (|:.     |) |
        '-|:.     |-'
          \::.    /
           '::. .'
             ) (
           _.' '._
          `-------`"
        puts "Please Make a Selection"
        puts "1) Slots"
        puts "2) Coin Flip"
        puts "3) Game 3"
        puts "4) Exit"
        menu_choice = gets.strip.to_i
        
        if menu_choice == 1
            @slots = Slotgame.new(@player)
        elsif menu_choice == 2
            @coin_flip
        elsif menu_choice == 3
            Game 3
        elsif menu_choice == 4
            puts "Thank you for playing!"
            exit
        else 
            puts "Sorry, you need to enter a number 1-4"
        end
    end
end

menu = Mainmenu.new()