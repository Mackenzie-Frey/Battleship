
puts "Welcome to BATTLESHIP"
puts " "

def quit
 puts "Your loss, Come Back if you dare"
 puts " "
end

def play
  puts "I have laid out my ships on the grid."
  puts "You now need to layout your two ships."
  puts "The first is two units long and the"
  puts "second is three units long."
  puts "The grid has A1 at the top left and D4 at the bottom right."
  puts " "
  puts "Enter the first coordinate for the two-unit ship (ex. A1):"
  coordinate_1_ship2 = gets.chomp
  puts "Enter the second coordinate for the two-unit ship (ex. A2):"
  coordinate_2_ship2 = gets.chomp
  puts "Enter the first coordinate for the three-unit ship (ex. A1):"
  coordinate_1_ship3 = gets.chomp
  puts "Enter the second coordinate for the three-unit ship (ex. A2):"
  coordinate_2_ship3 = gets.chomp
  puts "Enter the second coordinate for the three-unit ship (ex. A3):"
  coordinate_3_ship3 = gets.chomp
  ship2 = Hash.new(coordinate_1_ship2, coordinate_2_ship2)
  ship3 = Hash.new(coordinate_1_ship3, coordinate_2_ship3, coordinate_3_ship3)
  require 'pry'; binding.pry
end

def instructions
  puts "This is the game of battleship"
  puts "You will play against the computer and"
  puts "try to sink the other's ship by choosing"
  puts "an empty space on the grid and shooting your"
  puts "peg missile. Beware, because the computer will"
  puts "fire BACK! First to sink the other's ship"
  puts "wins by Force! Good Luck"
  puts ""
  puts "Do you want to go the main menu? (y/n)"
  puts "> "
  user_response = gets.chomp
  if user_response == "y" || user_response == "yes"
    introduction
  elsif user_response == "n" || user_response == "no"
    puts "Do you want to play? (y/n)"
    puts ">"
    if user_response == "y" || user_response == "yes"
      play
    else
      quit
    end
  else
    quit
  end
end

def introduction
  puts "Would you like to (p)lay, read the (i)instructions, or (q)uit?"
  user_input = gets.chomp
  if user_input == "p" || user_input == "play"
    play
  elsif user_input == "i" || user_input == "instructions"
    instructions
  elsif user_input == "q" || user_input == "quit"
    quit
  else
    puts "Wrong input, please try again"
    introduction
  end

end

introduction
instructions
