require './lib/space'

class Board
  attr_reader :size
  def initialize(size = 4)
    @size = size
    space = Space.new
    @cell_hash = {"A1" => space.status, "A2" => space.status, "A3" => space.status, "A4" => space.status, "B1" => space.status, "B2" => space.status, "B3" => space.status, "B4" => space.status, "C1" => space.status, "C2" => space.status, "C3" => space.status, "C4" => space.status, "D1" => space.status, "D2" => space.status, "D3" => space.status, "D4" => space.status}
  end

  def display_grid
    puts "==========="
    puts ". 1 2 3 4  "
    row_A = ["A ", @cell_hash["A1"], @cell_hash["A2"], @cell_hash["A3"], @cell_hash["A4"]]
    row_B = ["B ", @cell_hash["B1"], @cell_hash["B2"], @cell_hash["B3"], @cell_hash["B4"]]
    row_C = ["C ", @cell_hash["C1"], @cell_hash["C2"], @cell_hash["C3"], @cell_hash["C4"]]
    row_D = ["D ", @cell_hash["D1"], @cell_hash["D2"], @cell_hash["D3"], @cell_hash["D4"]]
    puts row_A.join
    puts row_B.join
    puts row_C.join
    puts row_D.join
    puts "==========="

    #array to string
    # H = "H "
    # empty = ""  "

# FOR TESTING
  # require './lib/board.rb'
#  board = Board.new



  end


  #
  # space(status)
  #
  # cell_hash[:A1]

  # status is empty || hit || miss
end
