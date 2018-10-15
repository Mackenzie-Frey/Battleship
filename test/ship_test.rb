require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end

  def test_sunk_gives_boolean
    ship = Ship.new
    assert_equal false, ship.sunk?
    2.times {ship.hit}
    assert_equal true, ship.sunk?
  end

  def test_hit_counter_increases_with_hit
    ship = Ship.new
    assert_equal 0, ship.hit_counter
    ship.hit
    assert_equal 1, ship.hit_counter
    ship.hit
    assert_equal 2, ship.hit_counter
  end

  def test_different_ship_sinks
    ship = Ship.new(4)
    assert_equal false, ship.sunk?
    4.times {ship.hit}
    assert_equal true, ship.sunk?
  end

#This test isn't doing anything yet.
  def test_it_can_read_coordinate_ship_coordinates
    ship = Ship.new
    assert_equal ["A1"], ship.player_shot
  end
end
