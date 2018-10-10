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
    row_A = ["A", cell_hash[:A1], cell_hash[:A2], cell_hash[:A3], cell_hash[:A4]]
    row_B = ["B", cell_hash[:B1], cell_hash[:B2], cell_hash[:B3], cell_hash[:B4]]
    row_C = ["C", cell_hash[:C1], cell_hash[:C2], cell_hash[:C3], cell_hash[:C4]]
    row_D = ["D", cell_hash[:D1], cell_hash[:D2], cell_hash[:D3], cell_hash[:D4]]
    p row_A
    puts row_B.join
    p row_C
    p row_D
    puts "==========="

    #array to string
    # " H "


  end


  #
  # space(status)
  #
  # cell_hash[:A1]

  # status is empty || hit || miss
end
