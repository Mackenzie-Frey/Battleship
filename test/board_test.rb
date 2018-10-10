require './test/test_helper'
require './lib/board'

class BoardTest < Minitest::Test
  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_row_returns_array
    board = Board.new
    assert_equal [1,2,3,4], board.row
  end

  def test_column_returns_array
    board = Board.new
    assert_equal ["A", "B", "C", "D"], board.column
  end
end
