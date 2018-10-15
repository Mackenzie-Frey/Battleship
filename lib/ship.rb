require './lib/player'
require './battleship'


class Ship
  attr_reader   :length,
                :hit_counter

  def initialize(length = 2)
    @length      = length
    @hit_counter = 0
    @player = Player.new
    @game = Game.new
  end

  def hit
    @hit_counter += 1
  end

  def sunk?
    @length == @hit_counter
  end

  def player_shot
    @player.shoot
    @player.stored_shot_array
  end

  def ship_coordinates
    @game.ship_coordinate_array
    require 'pry';binding.pry
  end

  # pull in ship coordinates
  # compare stored_shot_array to ship_coordinate_array
  # to see if a ship has been hit
# change value of cell_hash to H/M

# (What is the best class to do this in?)

end
