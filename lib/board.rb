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
    row_A = ["A ", @cell_hash["A1"].inspect, @cell_hash["A2"].inspect, @cell_hash["A3"].inspect, @cell_hash["A4"].inspect]
    row_B = ["B ", @cell_hash["B1"].inspect, @cell_hash["B2"].inspect, @cell_hash["B3"].inspect, @cell_hash["B4"].inspect]
    row_C = ["C ", @cell_hash["C1"].inspect, @cell_hash["C2"].inspect, @cell_hash["C3"].inspect, @cell_hash["C4"].inspect]
    row_D = ["D ", @cell_hash["D1"].inspect, @cell_hash["D2"].inspect, @cell_hash["D3"].inspect, @cell_hash["D4"].inspect]
    p row_A.join
    p row_B.join
    p row_C.join
    p row_D.join
    puts "==========="
  end


end
