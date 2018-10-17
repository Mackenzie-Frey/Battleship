require './test/test_helper'
require './battleship'

class GameTest < Minitest::Test
  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_it_puts_into_ship_coordinate_array
    game = Game.new
    game.coordinate_1_ship2 = "C1"
    game.coordinate_2_ship2 = "C2"
    game.coordinate_1_ship3 = "A3"
    game.coordinate_2_ship3 = "B3"
    game.coordinate_3_ship3 = "C3"
    assert_equal ["C1", "C2", "A3", "B3", "C3"], game.ship_coordinate_array
  end

  def test_it_does_not_wrap_vertically
    game = Game.new
    game.coordinate_1_ship2 = "C1"
    game.coordinate_2_ship2 = "C2"
    game.coordinate_1_ship3 = "A3"
    game.coordinate_2_ship3 = "B3"
    game.coordinate_3_ship3 = "C3"
    assert_equal true, game.ship_does_not_wrap_vertically_check
    game.coordinate_1_ship2 = "C1"
    game.coordinate_2_ship2 = "C2"
    game.coordinate_1_ship3 = "C3"
    game.coordinate_2_ship3 = "D3"
    game.coordinate_3_ship3 = "A3"
    assert_equal false, game.ship_does_not_wrap_vertically_check
  end

  def test_it_does_not_wrap_horizontally
    game = Game.new
    game.coordinate_1_ship2 = "C1"
    game.coordinate_2_ship2 = "C2"
    game.coordinate_1_ship3 = "A4"
    game.coordinate_2_ship3 = "A1"
    game.coordinate_3_ship3 = "A2"
    assert_equal false, game.ship_does_not_wrap_horizontally_check
    game.coordinate_1_ship2 = "C1"
    game.coordinate_2_ship2 = "C2"
    game.coordinate_1_ship3 = "A3"
    game.coordinate_2_ship3 = "B3"
    game.coordinate_3_ship3 = "C3"
    assert_equal true, game.ship_does_not_wrap_horizontally_check
  end

end
