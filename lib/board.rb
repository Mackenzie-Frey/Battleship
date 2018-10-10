class Board
  attr_reader :size
  def initialize(size = 4)
    @size = size
  end

  def row
    (1..@size).to_a
  end

  def column
    column = ('A'..'Z').to_a
    column[0..@size - 1]
  end

  def display_grid(cell_hash)
    puts "==========="
    puts ". 1 2 3 4  "
    row_A = ["A ", cell_hash[:A1], cell_hash[:A2], cell_hash[:A3], cell_hash[:A4]]
    row_B = ["B ", cell_hash[:B1], cell_hash[:B2], cell_hash[:B3], cell_hash[:B4]]
    row_C = ["C ", cell_hash[:C1], cell_hash[:C2], cell_hash[:C3], cell_hash[:C4]]
    row_D = ["D ", cell_hash[:D1], cell_hash[:D2], cell_hash[:D3], cell_hash[:D4]]
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
# cell_hash = {A1: "H ", D4: "H ", A2: "H " , A3: "M " , A4: "M ", B1: "H ", B2: "  " , B3: "M " , B4: "M " }
#  board.display_grid(cell_hash)


  end


  #
  # space(status)
  #
  # cell_hash[:A1]

  # status is empty || hit || miss
end
