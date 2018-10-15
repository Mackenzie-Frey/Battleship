require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_exists
    player = Player.new
    assert_instance_of Player, player
  end

  def test_it_can_display_empty_board

    player = Player.new
    require 'pry';binding.pry
    assert_equal nil ,player.board

  end

  def test_player_can_take_a_shot
skip
    player = Player.new
    assert_equal ["A1"], player.shoot
  end

  def test_for_duplicate_shots
skip
    player = Player.new
    player.shoot
    player.shoot
    assert_equal false, player.check_for_duplicate_shots
  end

  def test_it_is_a_shot_that_exists
    player = Player.new
    assert_equal true, player.check_for_shot_vs_existing_coordinate("A1")
    assert_equal false, player.check_for_shot_vs_existing_coordinate("F1")
  end

end
