require './lib/board.rb'

class Player
  attr_reader :board

  def initialize(board)
    @board = Board.new.display_grid(cell_hash)
  end


end
