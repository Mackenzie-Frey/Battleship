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
end
