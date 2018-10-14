require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_exists
    player = Player.new
    assert_instance_of Player, player
  end

  def test_it_can_display_empty_board
    player = Player.new
    assert_equal 0 ,player.board
  end

end
