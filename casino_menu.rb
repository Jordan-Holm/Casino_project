def menu
  puts "Please Make a Selection"
  puts "1) Slots"
  puts "2) Roulette"
  puts "3) HighLow"
  puts "4) Exit"
  menu_choice = gets.strip.to_i

  if menu_choice == 1
    Slots
  elsif menu_choice == 2
    Roulette
  elsif menu_choice == 3
     HighLow
  elsif menu_choice ==4
    puts "Thank you for playing!"
    exit
  else 
    puts "Sorry, you need to enter a number 1-4"
  end
  menu
end