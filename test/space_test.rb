require './test/test_helper'
require './lib/space'

class SpaceTest < Minitest::Test
  def test_it_exists
    space = Space.new("A1")
    assert_instance_of Space, space
  end
end
