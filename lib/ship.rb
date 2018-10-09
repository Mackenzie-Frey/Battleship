class Ship
  attr_reader   :length,
                :hit_counter

  def initialize(length = 2)
    @length      = length
    @hit_counter = 0
  end

  def hit
    @hit_counter += 1
  end

  def sunk?
    @length == @hit_counter
  end
end

# destroyer 3
# submarine 3
# aircraft carrier 5
# battleship 4
# cruiser 3
# patrol boat 2
