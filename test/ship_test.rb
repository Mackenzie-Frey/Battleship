require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_it_exists
    ship = Ship.new("Destroyer")
    assert_instance_of Ship, ship
  end

  def test_ship_has_length
    ship = Ship.new("Destroyer", 3)
    assert_equal 3, ship.length
  end

  def test_ship_can_change_name
    ship = Ship.new("Submarine", 3)
    assert_equal "Submarine", ship.name
  end

  # def test_it_can_occupy_coordinates
  #   ship = Ship.new("Submarine", 3)
  #   assert_equal  , ship.occupy(something)
  # end
end
