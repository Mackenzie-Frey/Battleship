
puts "Welcome to BATTLESHIP"
puts " "

def quit
 puts "Your loss, Come Back if you dare"
 puts " "
end

def play

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
