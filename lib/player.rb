require './lib/board.rb'

class Player
  attr_reader :board,
              :stored_shot_array

  attr_accessor :shot_1

  def initialize
    @board = Board.new.display_grid
    @stored_shot_array = []
  end

  def shoot
    puts "Take your shot!"
    @shot_1 = gets.chomp

    if check_for_shot_vs_existing_coordinate(@shot_1) && check_for_duplicate_shots
      @stored_shot_array << @shot_1
    else
      incorrect_coordinate
    end
  end

  def incorrect_coordinate
    puts "Sorry, at least one of your coordinates is incorrect. Maybe next time you'll get things right."
    shoot
  end

  def check_for_duplicate_shots
    @stored_shot_array.uniq == @stored_shot_array
  end

  def check_for_shot_vs_existing_coordinate(coordinate)
    existing_coordinate_array = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    existing_coordinate_array.include?(coordinate)
  end


end



 # match stored shot array against ship placement




  #when is game over
  # change status of space to H or M
  # this prints to board
  # While ship? = false, do loop (asking for shots)
