require './test/test_helper'
require './lib/space'

class SpaceTest < Minitest::Test
  def test_it_exists
    space = Space.new
    assert_instance_of Space, space
  end

  def test_it_has_default_status_empty
    space = Space.new
    assert_equal "  ", space.status
  end

  def test_it_status_changes_to_hit
    space = Space.new("A1")
    assert_equal "H ", space.hit
  end

  def test_it_status_changes_to_miss
    space = Space.new("A1")
    assert_equal "M ", space.miss
  end

end
