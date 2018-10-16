require './lib/space'

class Board
  attr_reader :size,
              :cell_hash

  def initialize(size = 4)
    @size = size
    @cell_hash = {"A1" => Space.new, "A2" => Space.new, "A3" => Space.new, "A4" => Space.new, "B1" => Space.new, "B2" => Space.new, "B3" => Space.new, "B4" => Space.new,
       "C1" => Space.new, "C2" => Space.new, "C3" => Space.new, "C4" => Space.new, "D1" => Space.new, "D2" => Space.new, "D3" => Space.new, "D4" => Space.new}
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
  end

end
