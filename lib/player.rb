require './lib/board.rb'

class Player
  attr_reader :board

  def initialize
    @board = Board.new.display_grid
  end

  def shoot
    puts "Take your shot!"
    @shot_1 = gets.chomp

    # change status of space to H or M
    # this prints to board

  end

  def check_for_dupliates
    # have array of stored shots
    # << shovel new shot into existing shots array and check for duplicate shots.
    # reject if duplicate

  end

# test for duplicate shots

end
