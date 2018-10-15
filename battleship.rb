require './lib/space'
require './lib/ship'

class Game

  puts "Welcome to BATTLESHIP"
  puts " "

attr_reader :ship_coordinates

attr_accessor :coordinate_1_ship2,
              :coordinate_2_ship2,
              :coordinate_1_ship3,
              :coordinate_2_ship3,
              :coordinate_3_ship3

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
    puts "Enter the second coordinate for the two-unit ship (ex. A2):"
    @coordinate_2_ship2 = gets.chomp
    puts "Enter the first coordinate for the three-unit ship (ex. A1):"
    @coordinate_1_ship3 = gets.chomp
    puts "Enter the second coordinate for the three-unit ship (ex. A2):"
    @coordinate_2_ship3 = gets.chomp
    puts "Enter the third coordinate for the three-unit ship (ex. A3):"
    @coordinate_3_ship3 = gets.chomp

    if all_coordinates_are_existing && ship_overlap_check && ship_does_not_wrap_neither_way_check
      place_ships
    else
      incorrect_coordinate
    end

  end

  def ship_does_not_wrap_neither_way_check
    ship_does_not_wrap_vertically_check == true && ship_does_not_wrap_horizontally_check == true
  end


  def ship_does_not_wrap_vertically_check
      coordinate_letter_array =
      ship_coordinate_array.map do |coordinate|
        coordinate.chars[0]
      end

      ship2_letter_difference = (coordinate_letter_array[0].ord - coordinate_letter_array[1].ord).abs

      ship_3_coordinate_letter_array = coordinate_letter_array[2..4]

      ship3_letter_difference_A = (ship_3_coordinate_letter_array[0].ord - ship_3_coordinate_letter_array[1].ord).abs
      ship3_letter_difference_B = (ship_3_coordinate_letter_array[1].ord - ship_3_coordinate_letter_array[2].ord).abs

      (ship2_letter_difference == 0 || ship2_letter_difference == 1) && (ship3_letter_difference_A == 0 || ship3_letter_difference_A == 1 && ship3_letter_difference_B == 0 || ship3_letter_difference_B == 1 )

  end

  def ship_does_not_wrap_horizontally_check
      coordinate_number_array =
      ship_coordinate_array.map do |coordinate|
        coordinate.chars[1].to_i
      end

      ship_2_difference = (coordinate_number_array[0] - coordinate_number_array[1]).abs

      ship_3_coordinate_number_array = coordinate_number_array[2..4]
      ship3_number_difference_A = (ship_3_coordinate_number_array[0] - ship_3_coordinate_number_array[1]).abs
      ship3_number_difference_B = (ship_3_coordinate_number_array[1] - ship_3_coordinate_number_array[2]).abs

      (ship_2_difference == 1) && (ship3_number_difference_A == 1 || ship3_number_difference_A == 0 && ship3_number_difference_B == 1 || ship3_number_difference_B == 0)
  end


  def existing_coordinate_check(coordinate)
    existing_coordinate_array = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    existing_coordinate_array.include?(coordinate)
  end

  def all_coordinates_are_existing
    a = existing_coordinate_check(@coordinate_1_ship2)
    b = existing_coordinate_check(@coordinate_2_ship2)
    c = existing_coordinate_check(@coordinate_1_ship3)
    d = existing_coordinate_check(@coordinate_2_ship3)
    e = existing_coordinate_check(@coordinate_3_ship3)
    a && b && c && d && e
  end

  def ship_overlap_check
    ship_coordinate_array.uniq == ship_coordinate_array
  end

  def incorrect_coordinate
    puts "Sorry, at least one of your coordinates is incorrect. Maybe next time you'll get things right."
  end

  def ship_coordinate_array
    [@coordinate_1_ship2, @coordinate_2_ship2, @coordinate_1_ship3, @coordinate_2_ship3, @coordinate_3_ship3]
  end


  def place_ships
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

# check against Jeff's code and slack group message
# create a random class
