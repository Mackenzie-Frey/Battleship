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

# ship needs to store location. So it can be hit/missed. (could do attr_reader, but an attr accessor (ship.location =   ) will allow from outside to set the ship location. - might not be needed if place ship method exists inside of the ship class. when playing game can call ship.place.)
# space need to know where it is. It can't have a status if it doesn't know which space it is.
