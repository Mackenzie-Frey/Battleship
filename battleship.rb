require './lib/space'
require './lib/ship'

class Game

  puts "Welcome to BATTLESHIP"
  puts " "

attr_reader :ship_coordinates

  def initialize
    @ship_coordinates = Hash.new
  end

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
    @coordinate_1_ship2 = gets.chomp
    a = existing_coordinate_check(@coordinate_1_ship2)

    puts "Enter the second coordinate for the two-unit ship (ex. A2):"
    @coordinate_2_ship2 = gets.chomp
    b = existing_coordinate_check(@coordinate_2_ship2)
    puts "Enter the first coordinate for the three-unit ship (ex. A1):"
    @coordinate_1_ship3 = gets.chomp
    c = existing_coordinate_check(@coordinate_1_ship3)
    puts "Enter the second coordinate for the three-unit ship (ex. A2):"
    @coordinate_2_ship3 = gets.chomp
    d = existing_coordinate_check(@coordinate_2_ship3)
    puts "Enter the third coordinate for the three-unit ship (ex. A3):"
    @coordinate_3_ship3 = gets.chomp
    e = existing_coordinate_check(@coordinate_3_ship3)
  #  puts "wolf"
    #call next method to see if that fixes it.

    if a && b && c && d && e
      place_ships
    else
      incorrect_coordinate
    end

  end

  def incorrect_coordinate
    puts "Sorry incorrect coordinate. Please play the game again."
  end


  def existing_coordinate_check(coordinate)
    existing_coordinate_array = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    existing_coordinate_array.include?(coordinate)
        # puts "Sorry, please choose a coordinate that actually exists on the board."
        # puts "------------------------------------------------"
        # puts "The game will now restart!"
        # puts ""
  end

  def place_ships
    require 'pry';binding.pry
    @ship2 = Ship.new(2)
    @ship_coordinates[@coordinate_1_ship2] = @ship2
    @ship_coordinates[@coordinate_2_ship2] = @ship2
    @ship3 = Ship.new(3)
    @ship_coordinates[@coordinate_1_ship3] = @ship3
    @ship_coordinates[@coordinate_2_ship3] = @ship3
    @ship_coordinates[@coordinate_3_ship3] = @ship3
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
end

  game = Game.new
  game.introduction
  # game.instructions
